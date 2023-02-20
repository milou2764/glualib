---@meta
http = {}
--- Launches an asynchronous **GET** request to a HTTP server.
--- 
--- HTTP requests returning a status code >= `400` are still considered a success and will call the [onSuccess](/gmod/Structures/HTTPRequest) callback.
--- 
--- The [onFailure](/gmod/Structures/HTTPRequest) callback is usually only called on DNS or TCP errors (e.g. the website is unavailable or the domain does not exist).
---@param url string The URL of the website to fetch. 
---@param onSuccess? function Function to be called on success. Arguments are  * [string](/gmod/string) body  * [string](/gmod/string) size - equal to [string.len](/gmod/string.len)(body).  * [table](/gmod/table) headers  * [number](/gmod/number) code - The HTTP success code. 
---@param onFailure? function Function to be called on failure. Arguments are  * [string](/gmod/string) error - The error message. 
---@param headers? table KeyValue table for headers. 
function http.Fetch( url, onSuccess, onFailure, headers ) end
--- Sends an asynchronous **POST** request to a HTTP server.
--- 
--- HTTP requests returning a status code >= `400` are still considered a success and will call the [onSuccess](/gmod/Structures/HTTPRequest) callback.
--- 
--- The [onFailure](/gmod/Structures/HTTPRequest) callback is usually only called on DNS or TCP errors (e.g. the website is unavailable or the domain does not exist).
---@param url string The url to of the website to post. 
---@param parameters table The post parameters (x-www-form-urlencoded) to be send to the server. **Keys and values must be strings**. 
---@param onSuccess? function Function to be called on success. Arguments are  * [string](/gmod/string) body  * [string](/gmod/string) size - equal to [string.len](/gmod/string.len)(body).  * [table](/gmod/table) headers  * [number](/gmod/number) code - The HTTP success code. 
---@param onFailure? function Function to be called on failure. Arguments are  * [string](/gmod/string) error - The error message. 
---@param headers? table KeyValue table for headers. 
function http.Post( url, parameters, onSuccess, onFailure, headers ) end
