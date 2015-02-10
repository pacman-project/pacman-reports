project(D31)
cmake_minimum_required(VERSION 2.8)

file(GLOB_RECURSE input_files RELATIVE ${PROJECT_SOURCE_DIR} inputFiles/*.tex)

ADD_LATEX_DOCUMENT(
    D31.tex
    IMAGE_DIRS images ../shared_images
    INPUTS ${input_files}
    #BIBFILES bibliography.bib
    )