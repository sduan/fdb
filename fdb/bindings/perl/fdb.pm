#!/usr/bin/perl
use fdb_c;
package fdb;

sub fdb_get_max_api_version {
	return fdb_cc::fdb_get_max_api_version()
}

1;
