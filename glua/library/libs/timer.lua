---@meta
timer = {}
--- Adjusts the timer if the timer with the given identifier exists.
---@param identifier any Identifier of the timer to adjust. 
---@param delay number The delay interval in seconds. **Must be specified.** 
---@param repetitions number Repetitions. Use `0` for infinite or `nil` to keep previous value. 
---@param func function The new function. Use `nil` to keep previous value. 
---@return boolean
function timer.Adjust( identifier, delay, repetitions, func ) end
--- This function does nothing.
function timer.Check(  ) end
--- Creates a new timer that will repeat its function given amount of times.
--- This function also requires the timer to be named, which allows you to control it after it was created via the [timer](/gmod/timer).
--- 
--- For a simple one-time timer with no identifiers, see [timer.Simple](/gmod/timer.Simple).
---@param identifier string Identifier of the timer to create. Must be unique. If a timer already exists with the same identifier, that timer will be updated to the new settings and reset. 
---@param delay number The delay interval in seconds. If the delay is too small, the timer will fire on the next frame/tick. 
---@param repetitions number The number of times to repeat the timer. Enter 0 for infinite repetitions. 
---@param func function Function called when timer has finished the countdown. 
function timer.Create( identifier, delay, repetitions, func ) end
--- Stops and destroys the given timer. Alias of [timer.Remove](/gmod/timer.Remove).
---@param identifier string Identifier of the timer to destroy. 
function timer.Destroy( identifier ) end
--- Returns whenever the given timer exists or not.
---@param identifier string Identifier of the timer. 
---@return boolean
function timer.Exists( identifier ) end
--- Pauses the given timer.
---@param identifier any Identifier of the timer. 
---@return boolean
function timer.Pause( identifier ) end
--- Stops and removes a timer created by [timer.Create](/gmod/timer.Create).
---@param identifier string Identifier of the timer to remove. 
function timer.Remove( identifier ) end
--- Returns amount of repetitions/executions left before the timer destroys itself.
---@param identifier any Identifier of the timer. 
---@return number
function timer.RepsLeft( identifier ) end
--- Creates a simple timer that runs the given function after a specified delay.
--- 
--- For a more advanced version that you can control after creation, see [timer.Create](/gmod/timer.Create).
---@param delay number How long until the function should be ran (in seconds). Use 0 to have the function run in the next [GM:Think](/gmod/GM:Think). 
---@param func function The function to run after the specified delay. 
function timer.Simple( delay, func ) end
--- Restarts the given timer.
---@param identifier any Identifier of the timer. 
---@return boolean
function timer.Start( identifier ) end
--- Stops the given timer and rewinds it.
---@param identifier any Identifier of the timer. 
---@return boolean
function timer.Stop( identifier ) end
--- Returns amount of time left (in seconds) before the timer executes its function.
---@param identifier any Identifier of the timer. 
---@return number
function timer.TimeLeft( identifier ) end
--- Runs either [timer.Pause](/gmod/timer.Pause) or [timer.UnPause](/gmod/timer.UnPause) based on the timer's current status.
---@param identifier any Identifier of the timer. 
---@return boolean
function timer.Toggle( identifier ) end
--- Unpauses the timer.
---@param identifier any Identifier of the timer. 
---@return boolean
function timer.UnPause( identifier ) end
