#!/bin/bash
# Q - Queries the package database. This option allows you to view installed packages and their files,
# other useful meta-information about
# individual packages (dependencies, conflicts, install date, build date, size).

# q - Shows less information for certain query operations. This is useful when pacman’s output is processed in a script.
# e - Lists explicitly installed packages that are not required by any other package.
# pkglist.txt - It is the output file where you store the list of installed files.
sudo pacman -Qqe >pkglist.txt

# Installing using the text file
sudo pacman -S - <pkglist.txt

# Just in case, the backup list includes foreign packages, such as AUR packages, remove them first, and then install the rest of packages using command:
sudo pacman -S $(comm -12 <(pacman -Slq | sort) <(sort pkglist.txt))

# To remove all the packages on your newly installed system that are not mentioned in the backup list, run:
# sudo pacman -Rsu $(comm -23 <(pacman -Qq | sort) <(sort pkglist.txt))
