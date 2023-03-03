add_definitions(-DBOOST_ALL_NO_LIB)
add_definitions(-DBOOST_THREAD_BUILD_DLL)

set(BOOST_THREAD_SOURCE tss_null.cpp
		future.cpp
		)
		
if(WIN32)
	list(APPEND BOOST_THREAD_SOURCE win32/tss_dll.cpp
					win32/tss_pe.cpp
					win32/thread.cpp
					win32/thread_primitives.cpp
					)
else()
	list(APPEND BOOST_THREAD_SOURCE pthread/once.cpp
					pthread/thread.cpp
					)
endif()

__add_boost_target(thread)
									  
