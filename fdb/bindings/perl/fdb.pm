#!/usr/bin/perl
use fdb_c;
package fdb;

sub get_max_api_version
{
	return fdb_cc::fdb_get_max_api_version()
}

sub select_api_version
{
	return fdb_cc::fdb_select_api_version_impl($_[0], $_[0])
}

sub get_error
{
	return fdb_cc::fdb_get_error($_[0])
}

1;
