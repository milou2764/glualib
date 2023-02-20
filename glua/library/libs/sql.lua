---@meta
sql = {}
--- Tells the engine a set of queries is coming. Will wait until [sql.Commit](/gmod/sql.Commit) is called to run them.
--- This is most useful when you run more than 100+ queries.
--- This is equivalent to :
--- ```
--- sql.Query( "BEGIN;" )
--- ```
function sql.Begin(  ) end
--- Tells the engine to execute a series of queries queued for execution, must be preceded by [sql.Begin](/gmod/sql.Begin).
--- 
--- This is equivalent to `sql.Query( "COMMIT;" )`.
function sql.Commit(  ) end
--- Returns true if the index with the specified name exists.
---@param indexName string The name of the index to check. 
---@return boolean
function sql.IndexExists( indexName ) end
--- Returns the last error from a SQLite query.
---@return string
function sql.LastError(  ) end
--- Performs a query on the local SQLite database, returns a table as result set, nil if result is empty and false on error.
---@param query string The query to execute. 
---@return table
function sql.Query( query ) end
--- Performs the query like [sql.Query](/gmod/sql.Query), but returns the first row found.
--- 
--- Basically equivalent to :
--- ```
--- sql.Query( "*query* LIMIT 1;" )
--- ```
---@param query string The input query. 
---@param row? number The row number. Say we receive back 5 rows, putting 3 as this argument will give us row #3. 
---@return table
function sql.QueryRow( query, row ) end
--- Performs the query like [sql.QueryRow](/gmod/sql.QueryRow), but returns the first value found.
---@param query string The input query. 
---@return string
function sql.QueryValue( query ) end
--- Escapes dangerous characters and symbols from user input used in an SQLite SQL Query.
---@param string string The string to be escaped. 
---@param bNoQuotes? boolean Set this as `true`, and the function will not wrap the input string in apostrophes. 
---@return string
function sql.SQLStr( string, bNoQuotes ) end
--- Returns true if the table with the specified name exists.
---@param tableName string The name of the table to check. 
---@return boolean
function sql.TableExists( tableName ) end
