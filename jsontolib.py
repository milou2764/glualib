import json
import subprocess
import re

subprocess.run("rm -r glua", shell=True)
subprocess.run("mkdir glua", shell=True)
subprocess.run("mkdir glua/library", shell=True)
path = "glua/library/"

with open('wiki.json') as f:
    data = json.load(f)

def checkType(type_):
    if type_ == "vararg" or type_ == "file_class" or type_ == "sensor" or type_ == "Order":
        type_ = "any"
    elif type_ == "bool":
        type_ = "boolean"
    elif type_ == "pixelvis handle t":
        type_ = "number"
    return type_

luaKeywords = ["and", "break", "do", "else", "elseif", "end", "false", "for", "function", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"]
def argCheck(arg):
    wrong = re.findall(r'[^a-zA-Z0-9_.]', arg)
    for w in wrong:
        arg = arg.replace(w, "")
    if arg == "argn...":
        arg = "..."
    elif arg in luaKeywords:
        arg = arg + "_"
    return arg

def parseFunction(content, v):
    if "DESCRIPTION" in v:
        description = v["DESCRIPTION"].splitlines()
        for line in description:
            content += "--- " + line + "\n"
    args = ""
    if "ARGUMENTS" in v:
        for arg in v["ARGUMENTS"]:
            if "NAME" in arg and "TYPE" in arg:
                name = argCheck(arg["NAME"])
                args += name + ", "
                optional = ""
                description = ""
                if "DESCRIPTION" in arg:
                    descList = arg["DESCRIPTION"].splitlines()
                    # regex "optional"
                    for line in descList:
                        regex = re.findall(r'ptional', line)
                        if regex:
                            optional = "?"
                        description += " " + line + " "
                if "DEFAULT" in arg:
                    optional = "?"
                content += "---@param " + name + optional + " " + checkType(arg["TYPE"]) + description + "\n"
    if "RETURNS" in v:
        for ret in v["RETURNS"]:
            if "TYPE" in ret:
                content += "---@return " + checkType(ret["TYPE"]) + "\n"
    return content,args

#################
# GLOBALS      #
#################
subprocess.run("rm -f "+path+"globals.lua", shell=True)
subprocess.run("touch "+path+"globals.lua", shell=True)
f = open(path + 'globals.lua', 'a')
# Manual fixes
f.write("SERVER = true\nCLIENT = true\nSHARED = true")

content = "---@meta\n"
for glob, v in data['GLOBALS'].items():
    content += glob + " = {}\n"
    content,args = parseFunction(content, v)
    content += glob + " = function( " + args[:-2] + " ) end\n"

f.write(content)
f.close()

#################
# CLASSES      #
#################
subprocess.run("mkdir " + path + "classes", shell=True)
for class_, value in data['CLASSES'].items():
    content = "---@meta\n"
    content += "---@class " + class_ + "\n"
    content += class_ + " = {}\n"
    for fun, v in value['MEMBERS'].items():
        content,args = parseFunction(content, v)
        content += "function " + class_ + ":" + fun + "( " + args[:-2] + " ) end\n"

    open(path + 'classes/' + class_ + '.lua', 'xt').write(content)


#################
# LIBRARIES    #
#################
subprocess.run("mkdir " + path + "libs", shell=True)
for lib, value in data['LIBRARIES'].items():
    content = "---@meta\n"
    content += lib + " = {}\n"
    for fun, v in value['MEMBERS'].items():
        content,args = parseFunction(content, v)
        content += "function " + lib + "." + fun + "( " + args[:-2] + " ) end\n"

    open(path + 'libs/' + lib + '.lua', 'xt').write(content)

#################
# ENUMS        #
#################
subprocess.run("rm -f "+path+"enums.lua", shell=True)
subprocess.run("touch "+path+"enums.lua", shell=True)
# Manual fixes
open(path + 'enums.lua', 'at').write('TEXFILTER = {}\nSENSORBONE = {}\nSCREENFADE = {}\n')
f = open(path + 'enums.lua', 'at')
content = "---@meta\n"
for enum, v in data['ENUMS'].items():
    # The wiki description conflicts with the parser
    #if "DESCRIPTION" in v:
    #    content += "---@see "
    #    description = ""
    #    descList = v["DESCRIPTION"].splitlines()
    #    for line in descList:
    #        description += line + " "
    #    content += description + "\n"
    content += enum + " = " + v["VALUE"] + "\n"

f.write(content)
f.close()

#################
# STRUCTS      #
#################
subprocess.run("mkdir " + path + "structs", shell=True)
for struct, value in data['STRUCTS'].items():
    content = "---@meta\n"
    struct = struct.split(" ")[0]
    content += "---@class " + struct + "\n"
    fields = ""
    for field, v in value['MEMBERS'].items():
        if "DESCRIPTION" in v:
            name = v["NAME"].split(" ")[0]
            content += "---@field " + name + " " + v["TYPE"]
            description = " "
            descList = v["DESCRIPTION"].splitlines()
            for line in descList:
                description += line + " "
            content += description + "\n"
        if "VALUE" in v:
            content += struct + "." + field + " = " + v["VALUE"] + "\n"
        #if "DEFAULT" in v:
        #    fields += struct + "." + field + " = " + v["DEFAULT"] + "\n"
    #content += struct + " = {}\n" + fields
    content += struct + " = {}"

    open(path + 'structs/' + struct + '.lua', 'w').write(content)

# manual fixes
open(path + 'structs/ENT.lua', 'at').write('\n---@class ENT:Entity\n')
open(path + 'classes/Vector.lua', 'at').write('\n---@class Vector\n---@field x number\n---@field y number\n---@field z number\n')
