project(MS42)
cmake_minimum_required(VERSION 2.8)

ADD_LATEX_DOCUMENT(
    MS42.tex
    #INPUTS ${contents_files}
    IMAGE_DIRS images ../shared_images
    #BIBFILES bibliography.bib
    #USE_INDEX
    #USE_GLOSSARY
    #FILTER_OUTPUT
    )