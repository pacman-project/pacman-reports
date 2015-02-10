project(MS42)
cmake_minimum_required(VERSION 2.8)

file(GLOB_RECURSE input_files RELATIVE ${PROJECT_SOURCE_DIR} inputFiles/*.tex)

ADD_LATEX_DOCUMENT(
    MS42.tex
    IMAGE_DIRS images/plots  images ../shared_images
    INPUTS ${input_files}
    #BIBFILES bibliography.bib
    )