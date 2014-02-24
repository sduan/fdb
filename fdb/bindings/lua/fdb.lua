#!/usr/bin/lua
require("fdb_c")

print("FoundationDB max api version: "..fdb_c.fdb_get_max_api_version())

print("Try to set the api version to 300!")
err = fdb_c.fdb_select_api_version_impl(300, 300)
if err > 0 then
	print("Failed! Error message:"..fdb_c.fdb_get_error(err))
end

