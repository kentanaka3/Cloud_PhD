--- -*- lua -*-
version = "24.7"
prefix = "/opt/install/nvidia/hpc_sdk/" .. version

whatis("Loads NVIDIA HPC SDK 24.7")

help([[
This module loads the NVIDIA HPC SDK 24.7.

The environment variables $PATH and $MANPATH are updated as needed.
]])

setenv("NVHPC_HOME",            prefix)
prepend_path("PATH",            prefix .. "/Linux_x86_64/24.7/compilers/bin")
prepend_path("LD_LIBRARY_PATH", prefix .. "/Linux_x86_64/24.7/compilers/lib")
prepend_path("MANPATH",         prefix .. "/Linux_x86_64/24.7/comp")
