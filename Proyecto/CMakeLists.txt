cmake_minimum_required(VERSION 2.8)
project( run )
find_package( OpenCV REQUIRED )
cmake_minimum_required(VERSION 2.8)
include_directories( ${OpenCV_INCLUDE_DIRS} )
project( run )

find_package( OpenCV REQUIRED )

file(GLOB all_SRCS
include_directories( ${OpenCV_INCLUDE_DIRS} )

       "${PROJECT_SOURCE_DIR}/imageprocessing.hpp"
file(GLOB all_SRCS
       "${PROJECT_SOURCE_DIR}/imageprocessing.cpp"
       "${PROJECT_SOURCE_DIR}/imageprocessing.hpp"
       "${PROJECT_SOURCE_DIR}/servermain.cpp"    
       "${PROJECT_SOURCE_DIR}/imageprocessing.cpp"
     )  
       "${PROJECT_SOURCE_DIR}/servermain.cpp"    
add_executable (run ${all_SRCS})
     )  

add_executable (run ${all_SRCS})
target_link_libraries( run ${OpenCV_LIBS} )

target_link_libraries( run ${OpenCV_LIBS} )

#include_directories( ${OpenCV_INCLUDE_DIRS} )
#target_link_libraries( run ${OpenCV_LIBS} )

#IF( test AND test STREQUAL "on" )
#  message("Testing enabled")
#  file(GLOB all_SRCS
#       "${PROJECT_SOURCE_DIR}/imageprocessing.hpp"
#       "${PROJECT_SOURCE_DIR}/imageprocessing.cpp"
#       "${PROJECT_SOURCE_DIR}/servermain.cpp"
#       "${PROJECT_SOURCE_DIR}/text.cpp"    
#     )  
#  add_subdirectory(ext/googletest)
#  enable_testing()
#  include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})
#  add_executable (runUnitTests ${all_SRCS})
#  target_link_libraries(runUnitTests gtest ${OpenCV_LIBS})
#  add_test(UnitTests runUnitTests)
#ENDIF()










