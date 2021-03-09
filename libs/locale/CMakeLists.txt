add_definitions(-DBOOST_ALL_NO_LIB)
add_definitions(-DBOOST_LOCALE_NO_POSIX_BACKEND)

set(SRC encoding/codepage.cpp
		shared/date_time.cpp
		shared/format.cpp
		shared/formatting.cpp
		shared/generator.cpp
		shared/ids.cpp
		shared/localization_backend.cpp
		shared/message.cpp
		shared/mo_lambda.cpp
		std/codecvt.cpp
		std/collate.cpp
		std/converter.cpp
		std/numeric.cpp
		std/std_backend.cpp
		util/codecvt_converter.cpp
		util/default_locale.cpp
		util/gregorian.cpp
		util/info.cpp
		util/locale_data.cpp
		win32/collate.cpp
		win32/converter.cpp
		win32/lcid.cpp
		win32/numeric.cpp
		win32/win_backend.cpp
		)
		
if(WIN32)
else()
	add_definitions(-DBOOST_LOCALE_WITH_ICONV)
endif()

__add_real_target(boost_locale dll SOURCE ${SRC}
									  INC ${CMAKE_CURRENT_SOURCE_DIR}/../../
									  DEF BOOST_ALL_DYN_LINK
									  INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/../../)