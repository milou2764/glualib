---@meta
---@class CSoundPatch
CSoundPatch = {}
--- Adjust the pitch, alias the speed at which the sound is being played.
--- 
--- This invokes the [GM:EntityEmitSound](/gmod/GM:EntityEmitSound).
---@param pitch number The pitch can range from 0-255. Where 100 is the original pitch. 
---@param deltaTime? number The time to fade from previous to the new pitch. 
function CSoundPatch:ChangePitch( pitch, deltaTime ) end
--- Adjusts the volume of the sound played.
--- Appears to only work while the sound is being played.
---@param volume number The volume ranges from 0 to 1. 
---@param deltaTime? number Time to fade the volume from previous to new value from. 
function CSoundPatch:ChangeVolume( volume, deltaTime ) end
--- Fades out the volume of the sound from the current volume to 0 in the given amount of seconds.
---@param seconds number Fade time. 
function CSoundPatch:FadeOut( seconds ) end
--- Returns the DSP ( Digital Signal Processor ) effect for the sound.
---@return number
function CSoundPatch:GetDSP(  ) end
--- Returns the current pitch.
---@return number
function CSoundPatch:GetPitch(  ) end
--- Returns the current sound level.
---@return number
function CSoundPatch:GetSoundLevel(  ) end
--- Returns the current volume.
---@return number
function CSoundPatch:GetVolume(  ) end
--- Returns whenever the sound is being played.
---@return boolean
function CSoundPatch:IsPlaying(  ) end
--- Starts to play the sound. This will reset the sound's volume and pitch to their default values. See [CSoundPatch:PlayEx](/gmod/CSoundPatch:PlayEx)
function CSoundPatch:Play(  ) end
--- Same as [CSoundPatch:Play](/gmod/CSoundPatch:Play) but with 2 extra arguments allowing to set volume and pitch directly.
---@param volume number The volume ranges from 0 to 1. 
---@param pitch number The pitch can range from 0-255. 
function CSoundPatch:PlayEx( volume, pitch ) end
--- Sets the DSP (Digital Signal Processor) effect for the sound. Similar to [Player:SetDSP](/gmod/Player:SetDSP) but for individual sounds.
---@param dsp number The DSP effect to set.  Pick from the [list of DSP's](https://developer.valvesoftware.com/wiki/Dsp_presets) 
function CSoundPatch:SetDSP( dsp ) end
--- Sets the sound level in decibel.
---@param level number The sound level in decibel. See [SNDLVL](/gmod/Enums/SNDLVL) 
function CSoundPatch:SetSoundLevel( level ) end
--- Stops the sound from being played.
function CSoundPatch:Stop(  ) end
