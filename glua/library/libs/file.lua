---@meta
file = {}
--- Appends a file relative to the `data` folder.
---@param name string The file's name. 
---@param content string The content which should be appended to the file. 
function file.Append( name, content ) end
--- Returns the content of a file asynchronously.
--- 
--- All limitations of [file.Read](/gmod/file.Read) also apply.
---@param fileName string The name of the file. 
---@param gamePath string The path to look for the files and directories in. See [this list](/gmod/File_Search_Paths) for a list of valid paths. 
---@param callback function A callback function that will be called when the file read operation finishes. Arguments are:  * [string](/gmod/string) fileName - The `fileName` argument above.  * [string](/gmod/string) gamePath - The `gamePath` argument above.  * [number](/gmod/number) status - The status of the operation.  * [string](/gmod/string) data - The entirety of the data of the file. 
---@param sync? boolean If `true` the file will be read synchronously. 
function file.AsyncRead( fileName, gamePath, callback, sync ) end
--- Creates a directory that is relative to the `data` folder.
---@param name string The directory's name. 
function file.CreateDir( name ) end
--- Deletes a file or `empty` folder that is relative to the **data** folder. You can't remove any files outside of **data** folder.
---@param name string The file name. 
function file.Delete( name ) end
--- Returns a boolean of whether the file or directory exists or not.
---@param name string The file or directory's name. 
---@param gamePath string The path to look for the files and directories in. See [this list](/gmod/File_Search_Paths) for a list of valid paths. 
---@return boolean
function file.Exists( name, gamePath ) end
--- Returns a list of files and directories inside a single folder.
---@param name string The wildcard to search for. `models/*.mdl` will list **.mdl** files in the `models/` folder. 
---@param path string The path to look for the files and directories in. See [this list](/gmod/File_Search_Paths) for a list of valid paths. 
---@param sorting? string The sorting to be used, **optional**.    * `nameasc` sort the files ascending by name.  * `namedesc` sort the files descending by name.  * `dateasc` sort the files ascending by date.  * `datedesc` sort the files descending by date. 
---@return table
---@return table
function file.Find( name, path, sorting ) end
--- Returns whether the given file is a directory or not.
---@param fileName string The file or directory's name. 
---@param gamePath string The path to look for the files and directories in. See [this list](/gmod/File_Search_Paths) for a list of valid paths. 
---@return boolean
function file.IsDir( fileName, gamePath ) end
--- Attempts to open a file with the given mode.
---@param fileName string The files name. See [file.Write](/gmod/file.Write) for details on filename restrictions when writing to files. 
---@param fileMode string The mode to open the file in. Possible values are:  * **r** - read mode  * **w** - write mode  * **a** - append mode  * **rb** - binary read mode  * **wb** - binary write mode  * **ab** - binary append mode 
---@param gamePath string The path to look for the files and directories in. See [this list](/gmod/File_Search_Paths) for a list of valid paths. 
---@return file_class
function file.Open( fileName, fileMode, gamePath ) end
--- Returns the content of a file.
--- 
--- Beware of casing -- some filesystems are case-sensitive. SRCDS on Linux seems to force file/directory creation to lowercase, but will not modify read operations.
---@param fileName string The name of the file. 
---@param gamePath string The path to look for the files and directories in. See [this list](/gmod/File_Search_Paths) for a list of valid paths. 
---@return string
function file.Read( fileName, gamePath ) end
--- Attempts to rename a file with the given name to another given name.
--- 
--- This function is constrained to the `data/` folder.
---@param orignalFileName string The original file or folder name. See [file.Write](/gmod/file.Write) for details on filename restrictions when writing to files.    **This argument will be forced lowercase.** 
---@param targetFileName string The target file or folder name. See [file.Write](/gmod/file.Write) for details on filename restrictions when writing to files.    **This argument will be forced lowercase.** 
---@return boolean
function file.Rename( orignalFileName, targetFileName ) end
--- Returns the file's size in bytes. If the file is not found, returns `-1`.
---@param fileName string The file's name. 
---@param gamePath string The path to look for the files and directories in. See [this list](/gmod/File_Search_Paths) for a list of valid paths. 
function file.Size( fileName, gamePath ) end
--- Returns when the file or folder was last modified in Unix time.
---@param path string The **file** or **folder** path. 
---@param gamePath string The path to look for the files and directories in. See [this list](/gmod/File_Search_Paths) for a list of valid paths. 
---@return number
function file.Time( path, gamePath ) end
--- Writes the given string to a file. Erases all previous data in the file. To add data without deleting previous data, use [file.Append](/gmod/file.Append).
---@param fileName string The name of the file being written into. The path is relative to the **data/** folder.    This argument will be forced lowercase.    The filename **must** end with one of the following:  * .txt  * .dat  * .json  * .xml  * .csv  * .jpg  * .jpeg  * .png  * .vtf  * .vmt  * .mp3  * .wav  * .ogg    Restricted symbols are: `" :` 
---@param content string The content that will be written into the file. 
function file.Write( fileName, content ) end
