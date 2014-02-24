#!/usr/bin/perl
require fdb;

print fdb::fdb_get_max_api_version(), "\n";
print fdb::fdb_select_api_version(300, 300), "\n";
print fdb::fdb_get_error(2203), "\n";
