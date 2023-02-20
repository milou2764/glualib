---@meta
jit = {}
function jit.opt(  ) end
function jit.util(  ) end
--- You can attach callbacks to a number of compiler events with jit.attach. The callback can be called:
--- 
--- * when a function has been compiled to bytecode ("bc");
--- * when trace recording starts or stops ("trace");
--- * as a trace is being recorded ("record");
--- * or when a trace exits through a side exit ("texit").
--- 
--- Set a callback with jit.attach(callback, "event") and clear the same callback with jit.attach(callback)
---@param callback function The callback function.    The arguments passed to the callback depend on the event being reported:    * "bc":  [function](/gmod/function) func - The function that's just been recorded    * "trace":  [string](/gmod/string) what - description of the trace event: "flush", "start", "stop", "abort". Available for all events.    [number](/gmod/number) tr - The trace number. Not available for flush.    [function](/gmod/function) func - The function being traced. Available for start and abort.    [number](/gmod/number) pc - The program counter - the bytecode number of the function being recorded (if this a Lua function). Available for start and abort.    [number](/gmod/number) otr - start: the parent trace number if this is a side trace, abort: abort code    [string](/gmod/string) oex - start: the exit number for the parent trace, abort: abort reason (string)    * "record":  [number](/gmod/number) tr - The trace number. Not available for flush.    [function](/gmod/function) func - The function being traced. Available for start and abort.    [number](/gmod/number) pc - The program counter - the bytecode number of the function being recorded (if this a Lua function). Available for start and abort.    [number](/gmod/number) depth  - The depth of the inlining of the current bytecode.    * "texit":  [number](/gmod/number) tr - The trace number. Not available for flush.    [number](/gmod/number) ex - The exit number    [number](/gmod/number) ngpr - The number of general-purpose and floating point registers that are active at the exit.    [number](/gmod/number) nfpr - The number of general-purpose and floating point registers that are active at the exit. 
---@param event string The event to hook into. 
function jit.attach( callback, event ) end
--- Flushes the whole cache of compiled code.
function jit.flush(  ) end
--- Disables LuaJIT Lua compilation.
function jit.off(  ) end
--- Enables LuaJIT Lua compilation.
function jit.on(  ) end
--- Returns the status of the JIT compiler and the current optimizations enabled.
---@return boolean
---@return any
function jit.status(  ) end
function jit.arch(  ) end
function jit.os(  ) end
function jit.version(  ) end
--- # Not a function
--- 
--- This is NOT a function, it's a variable containing the version number of the LuaJIT core. Version `xx.yy.zz` is represented by the decimal number `xxyyzz`. In GMod this is `20004`. On x86-64 branch it's `20100`.
function jit.version_num(  ) end
