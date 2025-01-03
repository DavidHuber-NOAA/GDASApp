help([[
Load environment for running the GDAS application with Intel compilers and MPI.
]])

local pkgName    = myModuleName()
local pkgVersion = myModuleVersion()
local pkgNameVer = myModuleFullName()

prepend_path("MODULEPATH", "/apps/ops/test/spack-stack-1.6.0-nco/envs/nco-intel-19.1.3.304/install/modulefiles/Core")

load("stack-intel/19.1.3.304")
load("stack-cray-mpich/8.1.9")
load("cray-pals")
load("cmake/3.23.1")
load("git/2.35.3")
load("hdf5/1.14.0")
load("parallel-netcdf/1.12.2")
load("netcdf-c/4.9.2")
load("netcdf-fortran/4.6.1")
load("netcdf-cxx4/4.3.1")
load("udunits/2.2.28")
load("eigen/3.4.0")
load("boost/1.83.0")
load("gsl-lite/0.37.0")
load("sp/2.5.0")
load("python/3.10.13")
load("ecbuild/3.7.2")
load("qhull/2020.2")
load("eckit/1.24.5")
load("fckit/0.11.0")
load("atlas/0.35.0")
load("nccmp/1.9.0.1")
load("nco/5.0.6")
load("gsl/2.7.1")
load("prod_util/2.0.14")
load("bufr/12.0.1")
load("fms/2023.04")
load("esmf/8.5.0")
load("py-pybind11/2.11.1")
load("py-pycodestyle/2.11.0")

-- hack for git-lfs
-- prepend_path("PATH", "/apps/spack/git-lfs/2.11.0/gcc/11.2.0/m6b6nl5kfqngfteqbggydc7kflxere3s/bin")

-- hack for FMS
-- setenv('fms_ROOT', '/apps/prod/hpc-stack/i-19.1.3.304__m-8.1.12__h-1.14.0__n-4.9.2__p-2.5.10__e-8.6.0pnetcdf/intel-19.1.3.304/cray-mpich-8.1.12/fms/2023.04')

local mpiexec = '/pe/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpirun'
local mpinproc = '-n'
setenv('MPIEXEC_EXEC', mpiexec)
setenv('MPIEXEC_NPROC', mpinproc)

setenv("CRTM_FIX","/lfs/h2/emc/da/noscrub/emc.da/GDASApp/fix/crtm/2.4.0")
setenv("GDASAPP_TESTDATA","/lfs/h2/emc/da/noscrub/emc.da/GDASApp/testdata")
setenv("GDASAPP_UNIT_TEST_DATA_PATH", "/lfs/h2/emc/da/noscrub/emc.da/GDASApp/unittestdata")

whatis("Name: ".. pkgName)
--whatis("Version: ".. pkgVersion)
whatis("Category: GDASApp")
whatis("Description: Load all libraries needed for GDASApp")
