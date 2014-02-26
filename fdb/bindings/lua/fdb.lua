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

function fdb.network_set_option( option, value, value_length )
	return fdb_c.fdb_network_set_option( option, value, value_length )
end

function fdb.setup_network()
	return fdb_c.fdb_setup_network()
end

function fdb.run_network()
	return fdb_c.fdb_run_network()
end

function fdb.stop_network()
	return fdb_c.fdb_stop_network()
end

return fdb

