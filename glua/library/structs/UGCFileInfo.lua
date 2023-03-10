---@meta
---@class UGCFileInfo
---@field id number The Workshop item ID 
---@field title string The title of the Workshop item 
---@field description string The description of the Workshop item 
---@field fileid number The internal File ID of the workshop item, if any 
---@field previewid number The internal File ID of the workshop item preview, if any 
---@field previewurl string A URL to the preview image of the workshop item 
---@field owner number The SteamID64 of the original uploader of the addon 
---@field created number Unix timestamp of when the item was created 
---@field updated number Unix timestamp of when the file was last updated 
---@field banned boolean Whether the file is banned or not 
---@field tags string Comma (,) separated list of tags, may be truncated to some length 
---@field size number File size of the workshop item contents 
---@field previewsize number Filesize of the preview file 
---@field installed boolean If the addon is subscribed, this value represents whether it is installed on the client and its files are accessible, false otherwise. 
---@field disabled boolean If the addon is subscribed, this value represents whether it is disabled on the client, false otherwise. 
---@field children table A list of child Workshop Items for this item.  For collections this will be sub-collections, for workshop items this will be the items they depend on. 
---@field ownername string The "nice" name of the Uploader, or "Unnammed Player" if we failed to get the data for some reason.  Do not use this field as it will most likely not be updated in time. Use [steamworks.RequestPlayerInfo](/gmod/steamworks.RequestPlayerInfo) instead. 
---@field error number If this key is set, no other data will be present in the response.  Values above 0 represent Steam Error codes, values below 0 mean the following: * -1 means Failed to create query * -2 means Failed to send query * -3 means Received 0 or more than 1 result * -4 means Failed to get item data from the response * -5 means Workshop item ID in the response is invalid * -6 means Workshop item ID in response is mismatching the requested file ID 
UGCFileInfo = {}