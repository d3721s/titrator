# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "RelWithDebInfo")
  file(REMOVE_RECURSE
  "CMakeFiles\\TitratorControl_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\TitratorControl_autogen.dir\\ParseCache.txt"
  "TitratorControl_autogen"
  )
endif()
