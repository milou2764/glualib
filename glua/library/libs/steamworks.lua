---@meta
steamworks = {}
--- Refreshes clients addons.
function steamworks.ApplyAddons(  ) end
--- Downloads a file from the supplied addon and saves it as a .cache file in garrysmod/cache folder.
--- 
--- This is mostly used to download the preview image of the addon, but the game seems to also use it to download replays and saves.
--- 
--- In case the retrieved file is an image and you need the [IMaterial](/gmod/IMaterial), use [AddonMaterial](/gmod/Global.AddonMaterial) with the path supplied from the callback.
---@param workshopPreviewID string The Preview ID of workshop item. 
---@param uncompress boolean Whether to uncompress the file or not, assuming it was compressed with LZMA.  You will usually want to set this to true. 
---@param resultCallback function The function to process retrieved data. The first and only argument is a string, containing path to the saved file. 
function steamworks.Download( workshopPreviewID, uncompress, resultCallback ) end
--- Downloads a Steam Workshop file by its ID and returns a path to it.
---@param workshopID string The ID of workshop item to download. **NOT** a file ID. 
---@param resultCallback function The function to process retrieved data. The first argument is a string, containing path to the saved file, or nil if the download failed to any reason. The second argument is a [File](/gmod/File) object pointing to the downloaded .gma file. The file handle will be closed after the function exits. 
function steamworks.DownloadUGC( workshopID, resultCallback ) end
--- Retrieves info about supplied Steam Workshop addon.
---@param workshopItemID string The ID of Steam Workshop item. 
---@param resultCallback function The function to process retrieved data, with the following arguments:  * [table](/gmod/table) data - The data about the item, if the request succeeded, nil otherwise. See [UGCFileInfo](/gmod/Structures/UGCFileInfo). 
function steamworks.FileInfo( workshopItemID, resultCallback ) end
--- Retrieves a customized list of Steam Workshop addons.
---@param type string The type of items to retrieve. Possible values include:  * popular (All invalid options will equal to this)  * trending  * latest  * friends  * followed - Items of people the player is following on Steam  * friend_favs - Favorites of player's friends  * favorite - Player's favorites 
---@param tags table A table of tags to match. 
---@param offset number How much of results to skip from first one. Mainly used for pages. 
---@param numRetrieve number How much items to retrieve, up to 50 at a time. 
---@param days number When getting Most Popular content from Steam, this determines a time period. ( 7 = most popular addons in last 7 days, 1 = most popular addons today, etc ) 
---@param userID string "0" to retrieve all addons, "1" to retrieve addons only published by you, or a valid SteamID64 of a user to get workshop items of. 
---@param resultCallback function The function to process retrieved data. The first and only argument is a table, containing all the info, or nil in case of error 
function steamworks.GetList( type, tags, offset, numRetrieve, days, userID, resultCallback ) end
--- Retrieves players name by his 64bit SteamID.
--- 
--- You must call [steamworks.RequestPlayerInfo](/gmod/steamworks.RequestPlayerInfo) a decent amount of time before calling this function.
---@param steamID64 string The 64bit Steam ID ( aka Community ID ) of the player 
---@return string
function steamworks.GetPlayerName( steamID64 ) end
--- Returns whenever the client is subscribed to the specified Steam Workshop item.
---@param workshopItemID string The ID of the Steam Workshop item. 
---@return boolean
function steamworks.IsSubscribed( workshopItemID ) end
--- Opens the workshop website in the steam overlay browser.
function steamworks.OpenWorkshop(  ) end
--- Publishes dupes, saves or demos to workshop.
---@param tags table The workshop tags to apply 
---@param filename string Path to the file to upload 
---@param image string Path to the image to use as icon 
---@param name string Name of the Workshop submission 
---@param desc string Description of the Workshop submission 
function steamworks.Publish( tags, filename, image, name, desc ) end
--- Requests information of the player with SteamID64 for later use with [steamworks.GetPlayerName](/gmod/steamworks.GetPlayerName).
---@param steamID64 string The 64bit Steam ID of player. 
---@param callback function A callback function with only 1 argument - [string](/gmod/string) name. 
function steamworks.RequestPlayerInfo( steamID64, callback ) end
---@param workshopid string The Steam Workshop item id 
---@return string
function steamworks.SetFileCompleted( workshopid ) end
--- Sets whether you have played this addon or not. This will be shown to the user in the Steam Workshop itself:
---@param workshopid string The Steam Workshop item ID 
---@return string
function steamworks.SetFilePlayed( workshopid ) end
--- Sets if an addon should be enabled or disabled. Call [steamworks.ApplyAddons](/gmod/steamworks.ApplyAddons) afterwards to update.
---@param workshopItemID string The ID of the Steam Workshop item we should enable/disable 
---@param shouldMount boolean true to enable the item, false to disable. 
function steamworks.SetShouldMountAddon( workshopItemID, shouldMount ) end
--- Returns whenever the specified Steam Workshop addon will be mounted or not.
---@param workshopItemID string The ID of the Steam Workshop 
---@return boolean
function steamworks.ShouldMountAddon( workshopItemID ) end
--- Subscribes to the specified workshop addon. Call [steamworks.ApplyAddons](/gmod/steamworks.ApplyAddons) afterwards to update.
---@param workshopItemID string The ID of the Steam Workshop item we should subscribe to 
function steamworks.Subscribe( workshopItemID ) end
--- Unsubscribes to the specified workshop addon. Call [steamworks.ApplyAddons](/gmod/steamworks.ApplyAddons) afterwards to update.
--- 
--- This function should `never` be called without a user's consent and should not be called if the addon is currently in use (aka: the user is not in the main menu) as it may result in unexpected behaviour.
---@param workshopItemID string The ID of the Steam Workshop item we should unsubscribe from. 
function steamworks.Unsubscribe( workshopItemID ) end
--- Opens the workshop website for specified Steam Workshop item in the Steam overlay browser.
---@param workshopItemID string The ID of workshop item. 
function steamworks.ViewFile( workshopItemID ) end
--- Makes the user vote for the specified addon
---@param workshopItemID string The ID of workshop item. 
---@param upOrDown boolean Sets if the user should vote up/down. True makes them upvote, false down 
function steamworks.Vote( workshopItemID, upOrDown ) end
--- Retrieves vote info of supplied addon.
---@param workshopItemID string The ID of workshop item. 
---@param resultCallback function The function to process retrieved data. The first and only argument is a table, containing all the info. 
function steamworks.VoteInfo( workshopItemID, resultCallback ) end
