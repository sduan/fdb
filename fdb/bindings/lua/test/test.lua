#!/usr/bin/lua
package.path = package.path .. ";../?.lua"
require("fdb")

print("FoundationDB max api version: "..fdb.get_max_api_version())

print("Try to set the api version to 300!")
err = fdb.select_api_version( 300 )
if err > 0 then
	print("Failed! Error message:"..fdb.get_error(err))
end

