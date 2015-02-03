PROJECT(pacman_unipi_reports)
cmake_minimum_required(VERSION 2.8)

# Set path for CMake
set(CMAKE_MODULE_PATH
    "${CMAKE_SOURCE_DIR}/cmake"
    ${CMAKE_MODULE_PATH}
)

# set(LATEX_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/pdf)

#file(GLOB_RECURSE contents_files RELATIVE ${CMAKE_SOURCE_DIR} *.tex)

include(UseLATEX)

ADD_LATEX_DOCUMENT(
    D31.tex
    #INPUTS ${contents_files}
    IMAGE_DIRS images
    #BIBFILES bibliography.bib
    #USE_INDEX
    #USE_GLOSSARY
    #FILTER_OUTPUT
    )

ADD_LATEX_DOCUMENT(
    D42.tex
    #INPUTS ${contents_files}
    IMAGE_DIRS images
    #BIBFILES bibliography.bib
    #USE_INDEX
    #USE_GLOSSARY
    #FILTER_OUTPUT
    )

ADD_LATEX_DOCUMENT(
    MS42.tex
    #INPUTS ${contents_files}
    IMAGE_DIRS images
    #BIBFILES bibliography.bib
    #USE_INDEX
    #USE_GLOSSARY
    #FILTER_OUTPUT
    )
