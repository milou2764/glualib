---@meta
---@class EmitSoundInfo
---@field SoundName string The file path of the played sound.  Sounds prefixed with ) tell the sound engine that it is a spatial sound; this allows the sound to emit from a specific location within the world.  Sounds prefixed with ^ tell the sound engine that it is a distance based sound. The left channel of the .wav is the 'near' sound that will play when the sound originates close to you, and the right channel is the 'far' sound that will play when the sound originates far from you. 
---@field OriginalSoundName string The original file path or soundscript name.  Even if the SoundName value is changed, the OriginalSoundName value will remain the same.  Sounds may be returned as soundscripts (for example, "Weapon_357.Single") instead of the sound's file path. You can use [sound.GetProperties](/gmod/sound.GetProperties) to retrieve the actual file path. 
---@field SoundTime number The time at which the sound should be played.  If equal to 0 or CurTime(), the sound is played immediately. If greater than CurTime(), the sound is played with a delay. If less than CurTime(), part of the sound is skipped. 
---@field DSP number The DSP (digital signal processing) preset applied to the sound.  There are approximately 134 different presets defined by the Source engine between 0 and 133. These presets represent different types of 'rooms' or environments.  [List of DSP's](https://developer.valvesoftware.com/wiki/Dsp_presets) 
---@field SoundLevel number The sound's attenuation, a number between 0 (low) and 511 (high)  This determines how fast the sound drops away. A higher value means the sound can be heard farther away.  See [SNDLVL](/gmod/Enums/SNDLVL). 
---@field Pitch number The pitch of the played sound, a number between 0 (low) and 255 (high), where 100 is the sound's original pitch. 
---@field Flags number The bit flags of the played sound. See [SND](/gmod/Enums/SND) for available options. 
---@field Channel number The sound's channel. See [CHAN](/gmod/Enums/CHAN) for available options. 
---@field Volume number The volume of the played sound, return as a decimal number between 0 (low) and 1 (high). 
---@field Entity Entity The entity that played the sound. 
---@field Pos Vector The origin of the played sound. 
EmitSoundInfo = {}