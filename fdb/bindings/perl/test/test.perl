#!/usr/bin/perl
use FindBin;
use lib "$FindBin::Bin/../";
#use fdb;
use threads;
use threads::shared;

require fdb;

my @threads;

$count = 1;
my $network_thread = threads->new(\&fdb_setup, $count);
push(@threads, $network_thread);

foreach (@threads) {
	my $tmp = waitpid($_, 0);
	print "network thread terminated...\n";
}

sleep(10);
$err = fdb::stop_network();
if ( $err > 0 )
{
	print "Failed! Error message: ", fdb::get_error($err), "\n";
	return;
}
print "OK!\n";

sub fdb_setup {
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
}

