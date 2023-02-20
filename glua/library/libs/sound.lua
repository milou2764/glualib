---@meta
sound = {}
--- Creates a sound script. It can also override sounds, which seems to only work when set on the server.
---@param soundData table The sounds properties. See [SoundData](/gmod/Structures/SoundData) 
function sound.Add( soundData ) end
--- Overrides sounds defined inside of a txt file; typically used for adding map-specific sounds.
---@param filepath string Path to the script file to load. 
function sound.AddSoundOverrides( filepath ) end
--- Emits a sound hint to the game elements to react to, for example to repel or attract antlions.
---@param hint number The hint to emit. See [SOUND](/gmod/Enums/SOUND) 
---@param pos Vector The position to emit the hint at 
---@param volume number The volume or radius of the hint 
---@param duration number The duration of the hint in seconds 
---@param owner? Entity
function sound.EmitHint( hint, pos, volume, duration, owner ) end
--- Creates a sound from a function.
---@param indentifier string An unique identified for the sound. 
---@param samplerate number The sample rate of the sound. Must be `11025`, `22050` or `44100`. 
---@param length number The length in seconds of the sound to generate. 
---@param callback function A function which will be called to generate every sample on the sound. This function gets the current sample number passed as the first argument. The return value must be between `-1.0` and `1.0`. Other values will wrap back to the -1 to 1 range and basically clip. There are **65535** possible quantifiable values between -1 and 1. 
function sound.Generate( indentifier, samplerate, length, callback ) end
--- Returns properties of the soundscript.
---@param name string The name of the sound script 
---@return table
function sound.GetProperties( name ) end
--- Returns a list of all registered sound scripts.
---@return table
function sound.GetTable(  ) end
--- Plays a sound from the specified position in the world.
--- If you want to play a sound without a position, such as a UI sound, use [surface.PlaySound](/gmod/surface.PlaySound) instead.
---@param Name string A string path to the sound. 
---@param Pos Vector A vector describing where the sound should play. 
---@param Level number Sound level in decibels. 75 is normal. Ranges from 20 to 180, where 180 is super loud. This affects how far away the sound will be heard. 
---@param Pitch number An integer describing the sound pitch. Range is from 0 to 255. 100 is normal pitch. 
---@param Volume number A float ranging from 0-1 describing the output volume of the sound. 
function sound.Play( Name, Pos, Level, Pitch, Volume ) end
--- Plays a file from GMod directory. You can find a list of all error codes [here](http://www.un4seen.com/doc/#bass/BASS_ErrorGetCode.html)
--- 
--- For external file/stream playback, see [sound.PlayURL](/gmod/sound.PlayURL).
---@param path string The path to the file to play.    Unlike other sound functions and structures, the path is relative to `garrysmod/` instead of `garrysmod/sound/` 
---@param flags string Flags for the sound. Can be one or more of following, separated by a space (" "):  * 3d - Makes the sound 3D, so you can set its position  * mono - Forces the sound to have only one channel  * noplay - Forces the sound not to play as soon as this function is called  * noblock - Disables streaming in blocks. It is more resource-intensive, but it is required for [IGModAudioChannel:SetTime](/gmod/IGModAudioChannel:SetTime).          If you don't want to use any of the above, you can just leave it as "". 
---@param callback function Callback function that is called as soon as the the stream is loaded. It has next arguments:  * [IGModAudioChannel](/gmod/IGModAudioChannel) soundchannel - The sound channel. Will be nil if an error occured.  * [number](/gmod/number) errorID - ID of an error if an error has occured. Will be nil, otherwise.  * [string](/gmod/string) errorName - Name of an error if an error has occured. Will be nil, otherwise. 
function sound.PlayFile( path, flags, callback ) end
--- Allows you to play external sound files, as well as online radio streams.
--- You can find a list of all error codes [here](http://www.un4seen.com/doc/#bass/BASS_ErrorGetCode.html)
--- 
--- For offline file playback, see [sound.PlayFile](/gmod/sound.PlayFile).
---@param url string The URL of the sound to play 
---@param flags string Flags for the sound. Can be one or more of following, separated by a space (" "):  * 3d - Makes the sound 3D, so you can set its position  * mono - Forces the sound to have only one channel  * noplay - Forces the sound not to play as soon as this function is called  * noblock - Disables streaming in blocks. It is more resource-intensive, but it is required for [IGModAudioChannel:SetTime](/gmod/IGModAudioChannel:SetTime).          If you don't want to use any of the above, you can just leave it as "". 
---@param callback function Callback function that is called as soon as the the stream is loaded. It has next arguments:      [IGModAudioChannel](/gmod/IGModAudioChannel) soundchannel - The sound channel      [number](/gmod/number) errorID - ID of an error, if an error has occured      [string](/gmod/string) errorName - Name of an error, if an error has occured 
function sound.PlayURL( url, flags, callback ) end
