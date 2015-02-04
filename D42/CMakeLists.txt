project(D42)
cmake_minimum_required(VERSION 2.8)

ADD_LATEX_DOCUMENT(
    D42.tex
    IMAGE_DIRS images ../shared_images
    #BIBFILES bibliography.bib
    )