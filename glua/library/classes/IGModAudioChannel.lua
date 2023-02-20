---@meta
---@class IGModAudioChannel
IGModAudioChannel = {}
--- Enables or disables looping of audio channel, requires noblock flag.
---@param enable boolean Enable or disable looping of this audio channel. 
function IGModAudioChannel:EnableLooping( enable ) end
--- Computes the [DFT (discrete Fourier transform)](https://en.wikipedia.org/wiki/Discrete_Fourier_transform) of the sound channel.
--- 
--- The size parameter specifies the number of consecutive audio samples to use as the input to the DFT and is restricted to a power of two. A [Hann window](https://en.wikipedia.org/wiki/Hann_function) is applied to the input data.
--- 
--- The computed DFT has the same number of frequency bins as the number of samples. Only half of this DFT is returned, since [the DFT magnitudes are symmetric for real input data](https://en.wikipedia.org/wiki/Discrete_Fourier_transform#The_real-input_DFT). The magnitudes of the DFT (values from 0 to 1) are used to fill the output table, starting at index 1.
--- 
--- **Visualization protip:** For a size N DFT, bin k (1-indexed) corresponds to a frequency of (k - 1) / N * sampleRate.
--- 
--- **Visualization protip:** Sound energy is proportional to the square of the magnitudes. Adding magnitudes together makes no sense physically, but adding energies does.
--- 
--- **Visualization protip:** The human ear works on a logarithmic amplitude scale. You can convert to [decibels](https://en.wikipedia.org/wiki/Decibel) by taking 20 * [math.log10](/gmod/math.log10) of frequency magnitudes, or 10 * [math.log10](/gmod/math.log10) of energy. The decibel values will range from -infinity to 0.
---@param tbl table The table to output the DFT magnitudes (numbers between 0 and 1) into. Indices start from 1. 
---@param size number The number of samples to use. See [FFT](/gmod/Enums/FFT) 
---@return number
function IGModAudioChannel:FFT( tbl, size ) end
--- Returns 3D cone of the sound channel. See [IGModAudioChannel:Set3DCone](/gmod/IGModAudioChannel:Set3DCone).
---@return number
---@return number
---@return number
function IGModAudioChannel:Get3DCone(  ) end
--- Returns if the sound channel is currently in 3D mode or not. This value will be affected by [IGModAudioChannel:Set3DEnabled](/gmod/IGModAudioChannel:Set3DEnabled).
---@return boolean
function IGModAudioChannel:Get3DEnabled(  ) end
--- Returns 3D fade distances of a sound channel.
---@return number
---@return number
function IGModAudioChannel:Get3DFadeDistance(  ) end
--- Returns the average bit rate of the sound channel.
---@return number
function IGModAudioChannel:GetAverageBitRate(  ) end
--- Retrieves the number of bits per sample of the sound channel.
--- 
--- Doesn't work for mp3 and ogg files.
---@return number
function IGModAudioChannel:GetBitsPerSample(  ) end
--- Returns the filename for the sound channel.
---@return string
function IGModAudioChannel:GetFileName(  ) end
--- Returns the length of sound played by the sound channel.
---@return number
function IGModAudioChannel:GetLength(  ) end
--- Returns the right and left levels of sound played by the sound channel.
---@return number
---@return number
function IGModAudioChannel:GetLevel(  ) end
--- Gets the relative volume of the left and right channels.
---@return number
function IGModAudioChannel:GetPan(  ) end
--- Returns the playback rate of the sound channel.
---@return number
function IGModAudioChannel:GetPlaybackRate(  ) end
--- Returns position of the sound channel
---@return Vector
function IGModAudioChannel:GetPos(  ) end
--- Returns the sample rate for currently playing sound.
---@return number
function IGModAudioChannel:GetSamplingRate(  ) end
--- Returns the state of a sound channel
---@return number
function IGModAudioChannel:GetState(  ) end
--- Retrieves HTTP headers from a bass stream channel created by [sound.PlayURL](/gmod/sound.PlayURL), if available.
---@return table
function IGModAudioChannel:GetTagsHTTP(  ) end
--- Retrieves the ID3 version 1 info from a bass channel created by [sound.PlayFile](/gmod/sound.PlayFile) or [sound.PlayURL](/gmod/sound.PlayURL), if available.
--- 
--- ID3v2 is not supported.
---@return table
function IGModAudioChannel:GetTagsID3(  ) end
--- Retrieves meta stream info from a bass stream channel created by [sound.PlayURL](/gmod/sound.PlayURL), if available.
---@return string
function IGModAudioChannel:GetTagsMeta(  ) end
--- Retrieves OGG media info tag, from a bass channel created by [sound.PlayURL](/gmod/sound.PlayURL) or [sound.PlayFile](/gmod/sound.PlayFile), if available.
---@return table
function IGModAudioChannel:GetTagsOGG(  ) end
--- Retrieves OGG Vendor tag, usually containing the application that created the file, from a bass channel created by [sound.PlayURL](/gmod/sound.PlayURL) or [sound.PlayFile](/gmod/sound.PlayFile), if available.
---@return string
function IGModAudioChannel:GetTagsVendor(  ) end
--- Returns the current time of the sound channel
---@return number
function IGModAudioChannel:GetTime(  ) end
--- Returns volume of a sound channel
---@return number
function IGModAudioChannel:GetVolume(  ) end
--- Returns if the sound channel is in 3D mode or not.
---@return boolean
function IGModAudioChannel:Is3D(  ) end
--- Returns whether the audio stream is block streamed or not.
---@return boolean
function IGModAudioChannel:IsBlockStreamed(  ) end
--- Returns if the sound channel is looping or not.
---@return boolean
function IGModAudioChannel:IsLooping(  ) end
--- Returns if the sound channel is streamed from the Internet or not.
---@return boolean
function IGModAudioChannel:IsOnline(  ) end
--- Returns if the sound channel is valid or not.
---@return boolean
function IGModAudioChannel:IsValid(  ) end
--- Pauses the stream. It can be started again using [IGModAudioChannel:Play](/gmod/IGModAudioChannel:Play)
function IGModAudioChannel:Pause(  ) end
--- Starts playing the stream.
function IGModAudioChannel:Play(  ) end
--- Sets 3D cone of the sound channel.
---@param innerAngle number The angle of the inside projection cone in degrees.    Range is from 0 (no cone) to 360 (sphere), -1 = leave current. 
---@param outerAngle number The angle of the outside projection cone in degrees.    Range is from 0 (no cone) to 360 (sphere), -1 = leave current. 
---@param outerVolume number The delta-volume outside the outer projection cone.    Range is from 0 (silent) to 1 (same as inside the cone), less than 0 = leave current. 
function IGModAudioChannel:Set3DCone( innerAngle, outerAngle, outerVolume ) end
--- Sets the 3D mode of the channel. This will affect [IGModAudioChannel:Get3DEnabled](/gmod/IGModAudioChannel:Get3DEnabled) but not [IGModAudioChannel:Is3D](/gmod/IGModAudioChannel:Is3D).
--- 
--- This feature **requires** the channel to be initially created in 3D mode, i.e. [IGModAudioChannel:Is3D](/gmod/IGModAudioChannel:Is3D) should return true or this function will do nothing.
---@param enable boolean true to enable, false to disable 3D. 
function IGModAudioChannel:Set3DEnabled( enable ) end
--- Sets 3D fade distances of a sound channel.
---@param min number The minimum distance. The channel's volume is at maximum when the listener is within this distance.    0 or less = leave current. 
---@param max number The maximum distance. The channel's volume stops decreasing when the listener is beyond this distance.    0 or less = leave current. 
function IGModAudioChannel:Set3DFadeDistance( min, max ) end
--- Sets the relative volume of the left and right channels.
---@param pan number Relative volume between the left and right channels. -1 means only in left channel, 0 is center and 1 is only in the right channel. 
function IGModAudioChannel:SetPan( pan ) end
--- Sets the playback rate of the sound channel. May not work with high values for radio streams.
---@param rate number Playback rate to set to. 1 is normal speed, 0.5 is half the normal speed, etc. 
function IGModAudioChannel:SetPlaybackRate( rate ) end
--- Sets position of sound channel in case the sound channel has a 3d option set.
---@param pos Vector The position to put the sound into 
---@param dir? Vector The direction of the sound 
function IGModAudioChannel:SetPos( pos, dir ) end
--- Sets the sound channel to specified time ( Rewind to that position of the song ). Does not work on online radio streams.
--- 
--- Streamed sounds must have "noblock" parameter for this to work and [IGModAudioChannel:IsBlockStreamed](/gmod/IGModAudioChannel:IsBlockStreamed) must return false.
---@param secs number The time to set the stream to, in seconds. 
---@param dont_decode? boolean Set to true to skip decoding to set time, and instead just seek to it which is faster. Certain streams do not support seeking and have to decode to the given position. 
function IGModAudioChannel:SetTime( secs, dont_decode ) end
--- Sets the volume of a sound channel
---@param volume number Volume to set. 1 meaning 100% volume, 0.5 is 50% and 3 is 300%, etc. 
function IGModAudioChannel:SetVolume( volume ) end
--- Stop the stream. It can be started again using [IGModAudioChannel:Play](/gmod/IGModAudioChannel:Play).
function IGModAudioChannel:Stop(  ) end
