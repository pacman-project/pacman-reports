# pacman-unipi-report

A repository to host the reports from UNIPI within the PaCMan project.

## Adding a new document

1. Create your file DXY.tex or MSXY.tex.

2. Add your document to the CMakeLists.txt following this template, and filling convieniently the options:

```
ADD_LATEX_DOCUMENT(DXY.tex
                   [BIBFILES <bib_files>]
                   [INPUTS <input_tex_files>]
                   [IMAGE_DIRS] <image_directories>
                   [IMAGES] <image_files>
                   [CONFIGURE] <tex_files>
                   [DEPENDS] <tex_files>
                   [MULTIBIB_NEWCITES] <suffix_list>
                   [USE_INDEX] [USE_GLOSSARY] [USE_NOMENCL]
                   [DEFAULT_PDF] [DEFAULT_SAFEPDF] [DEFAULT_PS] [NO_DEFAULT]
                   [MANGLE_TARGET_NAMES])
```

## Build

Typical CMake procuder, first type `mkdir build && cd build && cmake ..`

And then you can use tab completrion after typing `make`. Or just type `make` or `make all` to compile all reports at once, or you can type `make DXY` or `make MSXY` to compile a specific report.

All PDFs are copied into the `pdf` folder to access them easily.

Note: The `make clean` command is not implemented, you need to delete auxiliary files by hand. Or you can clean the output of a single report `make DXY_clean` or `make MSXY_clean`.
