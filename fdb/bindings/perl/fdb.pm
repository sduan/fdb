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

sub network_set_option
{
	return fdb_cc::fdb_network_set_option($_[0], $_[1], $_[2])
}

sub setup_network()
{
	return fdb_cc::fdb_setup_network()
}

sub run_network()
{
	return fdb_cc::fdb_run_network()
}

sub stop_network()
{
	return fdb_cc::fdb_stop_network()
}

1;
