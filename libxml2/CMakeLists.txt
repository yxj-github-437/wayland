cmake_minimum_required(VERSION 3.11)

project(libxml2)

if(POLICY CMP0135)
    cmake_policy(SET CMP0135 NEW)
endif()

include(FetchContent)

set(libxml2_version 2.14.2)
FetchContent_Declare(
    libxml2
    URL https://github.com/GNOME/libxml2/archive/refs/tags/v${libxml2_version}.tar.gz
    URL_HASH SHA256=9e214d161df6fb98c99a045344f0b684a98b6c81834d2552e3a2ceca1740a716)
set(BUILD_SHARED_LIBS OFF CACHE INTERNAL "")
set(LIBXML2_WITH_ICONV OFF CACHE INTERNAL "")
set(LIBXML2_WITH_DEBUG OFF CACHE INTERNAL "")
set(LIBXML2_WITH_LZMA OFF CACHE INTERNAL "")
set(LIBXML2_WITH_ZLIB OFF CACHE INTERNAL "")
set(LIBXML2_WITH_PROGRAMS OFF CACHE INTERNAL "")
set(LIBXML2_WITH_TESTS OFF CACHE INTERNAL "")
set(LIBXML2_WITH_PYTHON OFF CACHE INTERNAL "")
FetchContent_MakeAvailable(libxml2)
