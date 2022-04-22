set(boost_includes ${CMAKE_CURRENT_SOURCE_DIR}/../)
include_directories(${boost_includes})
add_definitions(-DBOOST_ALL_DYN_LINK)

set(boost_libs chrono file_system iostreams locale log nowide program_options 
	python regex serialization system thread)
	
foreach(lib ${boost_libs})
	if(BOOST_BUILD_${lib})
		add_subdirectory(../libs/${lib} ${lib})
	endif()
endforeach()