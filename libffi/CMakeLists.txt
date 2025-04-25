cmake_minimum_required(VERSION 3.11)

project(libffi)

if(POLICY CMP0135)
    cmake_policy(SET CMP0135 NEW)
endif()

include(FetchContent)

set(ffi_version 3.4.8)
FetchContent_Declare(
    libffi
    URL https://github.com/libffi/libffi/releases/download/v${ffi_version}/libffi-${ffi_version}.tar.gz
    URL_HASH SHA256=bc9842a18898bfacb0ed1252c4febcc7e78fa139fd27fdc7a3e30d9d9356119b
    PATCH_COMMAND
    COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/CMakeLists.cmake <SOURCE_DIR>/CMakeLists.txt
    COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/fficonfig.h.cmake <SOURCE_DIR>/fficonfig.h.cmake)
FetchContent_MakeAvailable(libffi)
