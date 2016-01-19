project(DR54)
cmake_minimum_required(VERSION 2.8)

file(GLOB_RECURSE input_files RELATIVE ${PROJECT_SOURCE_DIR} inputFiles/*.tex)
file(GLOB_RECURSE pdf_files RELATIVE ${PROJECT_SOURCE_DIR} attachedPapers/*.pdf)

ADD_LATEX_DOCUMENT(
    DR54.tex
    IMAGE_DIRS images ../shared_images
    INPUTS ${input_files} ${pdf_files}
    BIBFILES bibliography/DR54.bib ../shared_bibliography/abbreviations.bib
    )
