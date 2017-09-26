-- Custom written Intel MPI module for use on MS Azure using CENTOS 7.2 template --

local version = "5.1.3.210"
local mpi_root = pathJoin("/share/data/software/intel/impi/",version)
local arch = "intel64"
whatis("Description: LMOD LUA module file for Intel MPI on MS-AZURE")
whatis("2016, Michael Pantic, IET, HSR, Rapperswil, Switzerland")

setenv("I_MPI_ROOT", mpi_root)
setenv("MPI_ROOT", mpi_root)

prepend_path('PATH', pathJoin(mpi_root,arch,"bin"))
prepend_path('LD_LIBRARY_PATH', pathJoin(mpi_root, arch, "lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(mpi_root, "mic", "lib"))
 
