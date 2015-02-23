# pacman-reports

## Installing the report style

The reports use the style defined in the file `templates/pacamanreport.cls`. 
You need to install it on your tex system in order to compile the reports following these instructions.

Note: the steps should be repeated if the file is changed.

Note2: bibliography uses the `IEEEtran` style, so ensure you have it on your system. In Linux: `sudo apt-get install texlive-publishers`.

### On Windows/TeXLive:
Just copy the .cls file into the local texmf folder.
In my laptop I just copied this is in: C:\texlive\texmf-local\tex\latex\local

### On Unix-based (at least Uuntu 14.04):

`sudo rsync -a ./templates/pacmanreport.cls /usr/share/texmf/tex/latex/pacmanreport/`

`sudo texhash`

### On Windows/MikTeX:
* Add the path to the `templates` folder using the admin menu of MikTeX:

![Image of MikTeX/Roots](http://i.stack.imgur.com/8rarJ.png)

* Refresh the MikTeX database:

![Image of MikTeX/General](http://i.stack.imgur.com/1zp0h.png)

## Adding a new document

* Create your folder DXY/MSXY containing your DXY/MSXY.tex, and also `bibliography`, `images`, as subfolders. We recommend the use of `\graphicspath{}` to access `shared_images`.

### For CMakers:

* Add a CMakeLists.txt following this template, and filling convieniently the options:

```
project(DXY)
cmake_minimum_required(VERSION 2.8)

ADD_LATEX_DOCUMENT(DXY.tex
                   [BIBFILES <bib_files>]
                   [IMAGE_DIRS] image ../shared_images
                   )
```

* Add your folder to the main CMakeLists.txt  with `add_subdirectory(DXY)`

## Build

### For CMakers:

* Type `mkdir build && cd build && cmake ..`

* Type `make` and use tab completion. Or hit `make` / `make all` to compile all reports at once, or hit `make DXY` or `make MSXY` to compile a specific report.

All PDFs are copied into the `pdf` folder to access them easily.

Note: The `make clean` command is not implemented, you need to delete auxiliary files by hand. Or you can clean the output of a single report `make DXY_clean` or `make MSXY_clean`.
