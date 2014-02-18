%module fdb
%{
#define FDB_API_VERSION 200
#include </usr/include/foundationdb/fdb_c.h>
    %}

#define FDB_API_VERSION 200
%include /usr/include/foundationdb/fdb_c.h
