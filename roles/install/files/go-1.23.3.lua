-- Lua script for Go module in Lmod
whatis("Name: Go")
whatis("Version: 1.23.3")
whatis("Category: Programming Language")
whatis("Description: Go programming language environment")
whatis("URL: https://golang.org")

-- Define local variables
local version = "1.23.3"
local install_dir = "/opt/install/go/" .. version
local go_bin = pathJoin(install_dir, "bin")

-- Set environment variables
setenv("GOROOT", install_dir)
prepend_path("PATH", go_bin)

-- Set GOPATH for a workspace directory
local gopath_dir = os.getenv("HOME") .. "/go"
setenv("GOPATH", gopath_dir)
prepend_path("PATH", pathJoin(gopath_dir, "bin"))