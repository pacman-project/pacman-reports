project(DR22)
cmake_minimum_required(VERSION 2.8)

file(GLOB_RECURSE input_files RELATIVE ${PROJECT_SOURCE_DIR} inputFiles/*.tex)
file(GLOB_RECURSE pdf_files RELATIVE ${PROJECT_SOURCE_DIR} attachedPapers/*.pdf)

ADD_LATEX_DOCUMENT(
    DR22.tex
    IMAGE_DIRS images ../shared_images
    INPUTS ${input_files} ${pdf_files}
    BIBFILES bibliography/DR22.bib ../shared_bibliography/abbreviations.bib
    )
