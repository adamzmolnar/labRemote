#
# Check for recent compiler
if("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
  if (CMAKE_CXX_COMPILER_VERSION VERSION_LESS 4.8)
    message(FATAL_ERROR "GCC version must be at least 4.8!")
  endif()
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
  if (CMAKE_CXX_COMPILER_VERSION VERSION_LESS 3.2)
    message(FATAL_ERROR "Clang version must be at least 3.2!")
  endif()
else()
  message(WARNING "You are using an unsupported compiler! Compilation has only been tested with Clang and GCC.")
endif()

if(CMAKE_BUILD_TYPE MATCHES Debug)
  add_compile_options(-g)
else()
  add_compile_options(-O2)
endif()
add_compile_options(-Wfatal-errors)
add_compile_options(-Wno-deprecated)
add_compile_options(-std=c++11)
add_compile_options(-Wall)
add_compile_options(-fPIC)
add_compile_options(-pthread)
add_compile_options(-m64)
add_compile_options(-I/usr/include/root)

#
# Check dependencies


# Find libFTDI1
find_package ( LibFTDI1 )

# Find libmpsse
find_package ( libmpsse )

if ( (${LIBFTDI_FOUND}) AND (${LIBMPSSE_FOUND}) )
  set(ENABLE_FTDI 1)
else()
  message("Disabling FTDI code due to missing libftdi1 or libmpsse")
  message(" libftdi1 = ${LIBFTDI_FOUND}")
  message(" libmpsse = ${LIBMPSSE_FOUND}")
endif()

#
# Add libraries
add_subdirectory(libPs)
add_subdirectory(libMeter)
add_subdirectory(libLoad)
add_subdirectory(libCom)
add_subdirectory(libDevCom)
add_subdirectory(libGalil)
add_subdirectory(libImageRec)
add_subdirectory(libZaber)
add_subdirectory(libWaferProb)
add_subdirectory(libScope)
add_subdirectory(libWaveFormGen)
add_subdirectory(libUtils)

#
# Add binaries
add_subdirectory(examples)
