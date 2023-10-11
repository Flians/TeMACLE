add_library(gurobi INTERFACE)
file(GLOB_RECURSE SOURCE_FILES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)
target_sources(gurobi INTERFACE ${SOURCE_FILES})
target_include_directories(gurobi SYSTEM INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/include)

# target_link_directories(gurobi INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/lib/)
target_link_libraries(gurobi INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/lib/libgurobi.so)

add_custom_target(gurobi_key
    # COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/bin/grbgetkey ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}
    COMMAND ${CMAKE_COMMAND} -E remove $ENV{HOME}/gurobi.lic
    COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/bin/grbgetkey 28043bfc-8004-11ed-9c31-0242ac190002 --path=$ENV{HOME})

if(NOT EXISTS $ENV{HOME}/gurobi.lic)
    add_dependencies(gurobi gurobi_key)
endif()
    