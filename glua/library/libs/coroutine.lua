---@meta
coroutine = {}
--- Creates a coroutine of the given function.
---@param func function The function for the coroutine to use. 
---@return thread
function coroutine.create( func ) end
--- Resumes the given coroutine and passes the given vararg to either the function arguments or the [coroutine.yield](/gmod/coroutine.yield) that is inside that function and returns whatever yield is called with the next time or by the final return in the function.
---@param coroutine thread Coroutine to resume. 
---@param args any Arguments to be returned by [coroutine.yield](/gmod/coroutine.yield). 
---@return boolean
---@return any
function coroutine.resume( coroutine, args ) end
--- Returns the active coroutine or nil if we are not within a coroutine.
---@return thread
function coroutine.running(  ) end
--- Returns the status of the coroutine passed to it, the possible statuses are "suspended", "running", and "dead".
---@param coroutine thread Coroutine to check the status of. 
---@return string
function coroutine.status( coroutine ) end
--- Yields the coroutine for the given duration before continuing.
--- 
--- This only works inside a coroutine.
--- 
--- This function uses [CurTime](/gmod/Global.CurTime) instead of [RealTime](/gmod/Global.RealTime).
---@param duration number The number of seconds to wait 
function coroutine.wait( duration ) end
--- Returns a function which calling is equivalent with calling [coroutine.resume](/gmod/coroutine.resume) with the coroutine and all extra parameters.
--- 
--- The values returned by the returned function only contain the values passed to the inner [coroutine.yield](/gmod/coroutine.yield) call and do not include the *no error* status that [coroutine.resume](/gmod/coroutine.resume) provides. In case of failure, an error is thrown instead.
---@param coroutine function Coroutine to resume. 
---@return function
function coroutine.wrap( coroutine ) end
--- Pauses the active coroutine and passes all additional variables to the call of [coroutine.resume](/gmod/coroutine.resume) that resumed the coroutine last time, and returns all additional variables that were passed to the previous call of resume.
---@param returnValue any Arguments to be returned by the last call of [coroutine.resume](/gmod/coroutine.resume) 
---@return any
function coroutine.yield( returnValue ) end
