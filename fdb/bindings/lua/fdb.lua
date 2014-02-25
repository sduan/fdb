#!/usr/bin/lua
require("fdb_c")

fdb = {}

function fdb.get_max_api_version()
	return fdb_c.fdb_get_max_api_version()
end

function fdb.select_api_version( version )
	return fdb_c.fdb_select_api_version_impl( version, version )
end

function fdb.get_error( error_no )
	return fdb_c.fdb_get_error( error_no )
end

return fdb

