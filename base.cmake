add_subdirectory(boost/libs/nowide)
add_subdirectory(boost/libs/file_system)
add_subdirectory(boost/libs/regex)
add_subdirectory(boost/libs/thread)
add_subdirectory(boost/libs/system)
add_subdirectory(boost/libs/iostreams)
add_subdirectory(boost/libs/program_options)

__set_folder_targets(boost TARGET 
						boost_nowide
						boost_filesystem
						boost_regex
						boost_thread
						boost_system
						boost_iostreams
						boost_program_options
						)
						
set(boost_libs 	boost_nowide
				boost_filesystem
				boost_regex
				boost_thread
				boost_system
				boost_iostreams
				boost_program_options
				)