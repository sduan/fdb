#!/usr/bin/perl
use FindBin;
use lib "$FindBin::Bin/../";
#use fdb;
require fdb;

print "FoundationDB max api version: ", fdb::get_max_api_version(), "\n";

print "Try to set the api version to 300!\n";
$err = fdb::select_api_version(300);
if ( $err > 0 )
{
	print "Failed! Error message: ", fdb::get_error($err), "\n";
}
