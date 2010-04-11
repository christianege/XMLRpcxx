# this one is important
SET(CMAKE_SYSTEM_NAME Linux)
#this one not so much
SET(CMAKE_SYSTEM_VERSION 1)

# specify the cross compiler
SET(CMAKE_C_COMPILER   /opt/eldk/usr/bin/ppc_6xx-gcc)
SET(CMAKE_CXX_COMPILER /opt/eldk/usr/bin/ppc_6xx-g++)

# where is the target environment 
SET(CMAKE_FIND_ROOT_PATH  /opt/eldk)

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

