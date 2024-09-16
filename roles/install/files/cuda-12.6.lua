-- -*- lua -*-
-- Module file created for CUDA

whatis("Name: CUDA Toolkit")
whatis("Version: 12.6") -- Specify the CUDA version
whatis("Category: GPU Computing")
whatis("Description: NVIDIA CUDA Toolkit")

-- Load dependencies, if any (for example, GCC compiler)
-- If you require GCC or other dependencies, you can specify them using the "load" function:
-- load("gcc/11.2.0")

-- Set the CUDA version
local version = "12.6"
local base = "/usr/local/cuda-" .. version -- Replace with your CUDA installation path

-- Set environment variables
setenv("CUDA_HOME", base)
setenv("CUDA_ROOT", base)
setenv("CUDA_VERSION", version)

-- Set paths for CUDA
prepend_path("PATH", pathJoin(base, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib64"))
prepend_path("CPATH", pathJoin(base, "include"))

-- Set the MANPATH for CUDA manual pages
prepend_path("MANPATH", pathJoin(base, "doc/man"))

-- Help section
help([[
This module sets up the environment for CUDA Toolkit version ]] .. version .. [[.

The CUDA Toolkit provides a comprehensive development environment for GPU computing with NVIDIA GPUs.
]])