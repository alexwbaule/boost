set(boost_includes ${CMAKE_CURRENT_SOURCE_DIR}/../)
include_directories(${boost_includes})

__add_include_interface(boost_header INTERFACE ${boost_includes} INTERFACE_DEF BOOST_ALL_NO_LIB)

set(boost_libs chrono file_system iostreams locale log nowide program_options 
	python regex serialization system thread)
	
message(STATUS "build boost part.")
foreach(lib ${boost_libs})
	if(BOOST_BUILD_${lib})
		add_subdirectory(../libs/${lib} ${lib})
	endif()
endforeach()