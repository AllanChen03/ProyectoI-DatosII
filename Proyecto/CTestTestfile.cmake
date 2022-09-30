# CMake generated Testfile for 
# Source directory: /home/allan/Proyecto
# Build directory: /home/allan/Proyecto
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(UnitTests "runUnitTests")
set_tests_properties(UnitTests PROPERTIES  _BACKTRACE_TRIPLES "/home/allan/Proyecto/CMakeLists.txt;22;add_test;/home/allan/Proyecto/CMakeLists.txt;0;")
subdirs("ext/googletest")
