macro(add_parser_and_scanner _PARSER _SCANNER)
    add_custom_command(
        OUTPUT "${CMAKE_CURRENT_SOURCE_DIR}/${_SCANNER}.cpp"
        MAIN_DEPENDENCY "${CMAKE_CURRENT_SOURCE_DIR}/${_SCANNER}.l"
        WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
        COMMAND flex
        ARGS -o${_SCANNER}.cpp ${_SCANNER}.l
    )

    add_custom_command(
        OUTPUT "${CMAKE_CURRENT_SOURCE_DIR}/${_PARSER}.cpp" "${CMAKE_CURRENT_SOURCE_DIR}/${_PARSER}.hpp"
        MAIN_DEPENDENCY "${CMAKE_CURRENT_SOURCE_DIR}/${_PARSER}.y"
        WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
        COMMAND bison
        ARGS -o${_PARSER}.cpp ${_PARSER}.y -d
    )

    add_custom_command(
        OUTPUT "${CMAKE_CURRENT_SOURCE_DIR}/${_PARSER}.h"
        MAIN_DEPENDENCY "${CMAKE_CURRENT_SOURCE_DIR}/${_PARSER}.hpp"
        WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
        COMMAND ${CMAKE_COMMAND}
        ARGS -E copy ${_PARSER}.hpp ${_PARSER}.h
    )
endmacro()
