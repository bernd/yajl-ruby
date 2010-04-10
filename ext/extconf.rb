# encoding: UTF-8
require 'mkmf'
require 'rbconfig'

# OpenBSD is still using gcc3 which doesn't have -Wextra.
if RbConfig::CONFIG['host_os'] !~ /openbsd/
  $CFLAGS << ' -Wextra'
end

$CFLAGS << ' -Wall -funroll-loops'
# $CFLAGS << ' -O0 -ggdb'

create_makefile("yajl_ext")
