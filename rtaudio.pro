TEMPLATE = lib
CONFIG += staticlib stl_off rtti_off

DESTDIR = $$_PRO_FILE_PWD_/../lib/

#RtAudio
win32:DEFINES += __WINDOWS_DS__ __WINDOWS_WASAPI__ __WINDOWS_ASIO__
unix:DEFINES += __LINUX_PULSE__
INCLUDEPATH += rtaudio/include
HEADERS += \
	RtAudio.h
win32:HEADERS += \
	asio.h \
	asiodrivers.h \
	asiodrvr.h \
	asiosys.h \
	dsound.h \
	functiondiscoverykeys_devpkey.h \
	ginclude.h \ 
	iasiodrv.h \
	iasiothiscallresolver.h 

SOURCES+= \
	RtAudio.cpp
win32:SOURCES += \
	asio.cpp \
	asiodrivers.cpp \
	asiolist.cpp \
	iasiothiscallresolver.cpp

