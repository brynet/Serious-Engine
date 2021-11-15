cmake_minimum_required(VERSION 2.8.7)
project(Ecc)

if(MSVC)
  add_compile_options(/W4)
else()
  add_compile_options(-Wall)
endif()

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/../cmake")
include(ParserAndScanner)

include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}
)

add_parser_and_scanner("Parser" "Scanner")
add_executable(ecc Main.cpp Parser.cpp Parser.h Scanner.cpp)
