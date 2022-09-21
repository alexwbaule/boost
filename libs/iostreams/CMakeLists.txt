set(BOOST_IOSTREAMS_SOURCE file_descriptor.cpp mapped_file.cpp
							)

set(LIBS)
__cc_find(Zlib)
if(TARGET zlib)
	list(APPEND BOOST_IOSTREAMS_SOURCE zlib.cpp)
	list(APPEND LIBS zlib)
endif()
__cc_find(Zstd)
if(TARGET zstd)
	list(APPEND BOOST_IOSTREAMS_SOURCE zstd.cpp)
	list(APPEND LIBS zstd)
endif()

__add_boost_target(iostreams)
target_link_libraries(boost_iostreams PRIVATE ${LIBS})