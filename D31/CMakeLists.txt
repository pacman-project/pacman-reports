project(D31)
cmake_minimum_required(VERSION 2.8)

ADD_LATEX_DOCUMENT(
    D31.tex
    #INPUTS ${contents_files}
    IMAGE_DIRS images ../shared_images
    #BIBFILES bibliography.bib
    #USE_INDEX
    #USE_GLOSSARY
    #FILTER_OUTPUT
    )