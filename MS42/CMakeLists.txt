project(MS42)
cmake_minimum_required(VERSION 2.8)

ADD_LATEX_DOCUMENT(
    MS42.tex
    IMAGE_DIRS images ../shared_images
    #BIBFILES bibliography.bib
    )