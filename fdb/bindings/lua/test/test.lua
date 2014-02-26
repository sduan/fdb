#!/usr/bin/lua
package.path = package.path .. ";../?.lua"
require("fdb")

print("FoundationDB max api version: "..fdb.get_max_api_version())

print("Set the api version to 200...")
err = fdb.select_api_version( 200 )
if err > 0 then
	print("Failed! Error message:"..fdb.get_error(err))
	return
end
print("OK!")

print("Setup network...")
err = fdb.setup_network()
if err > 0 then
	print("Failed! Error message:"..fdb.get_error(err))
	return
end
print("OK!")

print("Run network...")
err = fdb.run_network()
if err > 0 then
	print("Failed! Error message:"..fdb.get_error(err))
	return
end
print("OK!")
