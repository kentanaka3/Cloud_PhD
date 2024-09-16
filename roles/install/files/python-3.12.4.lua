--- -*- lua -*-
version = "3.12.4"
prefix = "/opt/install/python/versions/" .. version

whatis("Python Programming Language")

help([[
This module provides the Python 3 programming language.

Python is an interpreted, interactive, object-oriented programming
language often compared to Tcl, Perl, Scheme or Java. Python includes
modules, classes, exceptions, very high level dynamic data types and
dynamic typing.

The environment variables $PATH and $MANPATH are updated as needed.
]])

prepend_path("PATH",            prefix .. "/bin")
prepend_path("LD_LIBRARY_PATH", prefix .. "/lib")
prepend_path("MANPATH",         prefix .. "/share/man")