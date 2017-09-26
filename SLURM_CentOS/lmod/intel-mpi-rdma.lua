-- Custom written Intel MPI module for use on MS Azure using CENTOS 7.2 template --

prereq("intel-mpi")
whatis("LMOD LUA module file for Intel MPI using RDMA/Infiniband on MS Azure")
whatis("2016, Michael Pantic, IET, HSR, Rapperswil, Switzerland")

setenv("I_MPI_FABRICS","shm:dapl")
setenv("I_MPI_DAPL_PROVIDER","ofa-v2-ib0")
setenv("I_MPI_DYNAMIC_CONNECTION","0")
 
