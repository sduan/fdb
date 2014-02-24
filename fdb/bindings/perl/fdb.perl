#!/usr/bin/perl
require fdb;

print "FoundationDB max api version: ", fdb::fdb_get_max_api_version(), "\n";

print "Try to set the api version to 300!\n";
$err = fdb::fdb_select_api_version(300, 300);
if ( $err > 0 )
{
	print "Failed! Error message: ", fdb::fdb_get_error($err), "\n";
}
