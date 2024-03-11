set(MOCKTURTLE_EXAMPLES OFF)
set(MOCKTURTLE_EXPERIMENTS OFF)
if(CMAKE_HOST_WIN32)
    add_compile_options("-fpermissive")
endif()
set(CMAKE_POLICY_DEFAULT_CMP0077 NEW)
add_subdirectory(mockturtle)
add_subdirectory(pybind11)

pybind11_add_module(SynPy ${CMAKE_CURRENT_SOURCE_DIR}/synthesis.cpp)
target_link_libraries(SynPy PUBLIC mockturtle)

# config librecell
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/config/setup_common.py ${CMAKE_CURRENT_SOURCE_DIR}/librecell/librecell-common/setup.py COPYONLY)
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/config/setup_layout.py ${CMAKE_CURRENT_SOURCE_DIR}/librecell/librecell-layout/setup.py COPYONLY)
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/config/setup_lib.py ${CMAKE_CURRENT_SOURCE_DIR}/librecell/librecell-lib/setup.py COPYONLY)
