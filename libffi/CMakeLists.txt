cmake_minimum_required(VERSION 3.11)

project(libffi VERSION 3.5.2)

if(POLICY CMP0135)
    cmake_policy(SET CMP0135 NEW)
endif()

if (POLICY CMP0169)
    cmake_policy(SET CMP0169 OLD)
endif()

include(FetchContent)

set(ffi_version ${PROJECT_VERSION})
FetchContent_Declare(
    libffi
    URL https://github.com/libffi/libffi/releases/download/v${ffi_version}/libffi-${ffi_version}.tar.gz
    URL_HASH SHA256=f3a3082a23b37c293a4fcd1053147b371f2ff91fa7ea1b2a52e335676bac82dc)

FetchContent_Populate(libffi)
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/CMakeLists.cmake ${libffi_SOURCE_DIR}/CMakeLists.txt COPYONLY)
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/fficonfig.h.cmake ${libffi_SOURCE_DIR}/fficonfig.h.cmake COPYONLY)
add_subdirectory(${libffi_SOURCE_DIR} ${libffi_BINARY_DIR})
