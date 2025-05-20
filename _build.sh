#!/bin/bash

echo "Clearing build directory _build"
rm -rf _build

echo "Building website using Quarto book format"
quarto render website --to html

echo "Copying real lecture files into slides/"
cp lectures/lecture*.qmd slides/

echo "Building slides"
quarto render slides --to revealjs
echo "Removing left-over files folders"
rm -rf slides/lecture*_files

echo "Building PDF version of the book"
quarto render book --to pdf

echo "Copying PDF to OneDrive"
cp _build/book/EG-151-Microcontrollers-2024-2025.pdf $HOME/'OneDrive - Swansea University/1 Projects/EG-151 Microcontrollers 2024-2025'
# cp _build/book/EG-151-Microcontrollers-2024-2025.pdf website/_build/html

echo
echo "Updating GitHub pages https://jahangerh.github.io/eg-151-textbook"
cp .gitignore .gitattributes _build/html # Allow large files
ghp-import --message="Quarto version of GitHub pages website rebuilt" --no-jekyll --no-history --push --force _build/html 

