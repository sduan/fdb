#!/usr/bin/perl
use FindBin;
use lib "$FindBin::Bin/../";
#use fdb;
require fdb;

print "FoundationDB max api version: ", fdb::get_max_api_version(), "\n";

print "Set the api version to 200... ";
$err = fdb::select_api_version(200);
if ( $err > 0 )
{
	print "Failed! Error message: ", fdb::get_error($err), "\n";
	return;
}
print "OK!\n";

print "Setup network... ";
$err = fdb::setup_network();
if ( $err > 0 )
{
	print "Failed! Error message: ", fdb::get_error($err), "\n";
	return;
}
print "OK!\n";

print "Run network... ";
$err = fdb::run_network();
if ( $err > 0 )
{
	print "Failed! Error message: ", fdb::get_error($err), "\n";
	return;
}
print "OK!\n";
