# pacman-unipi-report

A repository to host the reports from UNIPI within the PaCMan project.

## Adding a new document

1. Create your file DXY.tex or MSXY.tex.

2. Add your document to the CMakeLists.txt following this template

```
ADD_LATEX_DOCUMENT(<tex_file>
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

`mkdir build && cd build && cmake ..`

Then you can type `make` or `make all` to generate all reports, or you can type `make DXY` or `make MSXY` to compile a specific report.

All generated PDFs are copied into the `pdf` folder to access them easily.

The `make clean` command is not fully implemented, you need to delete by hand. Or you can clean the output of a single report `make DXY_clean` or `make MSXY`. Use tab completion to see different targets.