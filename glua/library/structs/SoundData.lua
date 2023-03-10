---@meta
---@class SoundData
---@field channel number The sound channel to play in. See [CHAN](/gmod/Enums/CHAN) 
---@field name string The name of the sound. 
---@field pitchend number The pitch end. Deprecated, use pitch. 
---@field pitchstart number The initial pitch. Deprecated, use pitch. 
---@field level number The soundlevel of the sound in dB. See [SNDLVL](/gmod/Enums/SNDLVL). 
---@field sound string The sound file to be used in this sound effect. Can be a table of sound files. Relative to "sound" directory (must be in a subfolder, so sound/test.wav will not work). 
---@field volume number The volume of the sound as a decimal between `0` and `1`. Can be a table of two numbers, a minimum and a maximum value.  **Warning:** Volume of `0` will act as volume of `1` 
---@field pitch number The pitch of the sound. Can be a table of two numbers, a minimum and a maximum value. 
SoundData = {}