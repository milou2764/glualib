---@meta
---@class Stack
Stack = {}
--- Pop an item from the stack
---@param amount? number Amount of items you want to pop. 
function Stack:Pop( amount ) end
--- Push an item onto the stack
---@param object any The item you want to push 
function Stack:Push( object ) end
--- Returns the size of the stack
---@return number
function Stack:Size(  ) end
--- Get the item at the top of the stack
---@return any
function Stack:Top(  ) end
