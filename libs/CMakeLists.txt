set(boost_includes ${CMAKE_CURRENT_SOURCE_DIR}/../)
include_directories(${boost_includes})
add_definitions(-DBOOST_ALL_DYN_LINK)

add_subdirectory(chrono)
add_subdirectory(system)