#!/bin/bash

echo "Clearing build directory _build"
rm -rf _build

echo "Building website using Quarto book format"
quarto render website --to html

echo "Building weekly slides from website/lectures"
for week in {01..11}
do
    echo "Rendering slides for week$week"
    quarto render website/lectures/week$week/index.qmd \
        --to revealjs \
        --output slides/week$week.html
done

echo "Removing left-over slide files"
rm -rf slides/lecture*_files

echo "Building PDF version of the book"
quarto render book --to pdf

echo "Copying PDF to OneDrive"
cp _build/book/EG-151-Microcontrollers-2025-2026.pdf "$HOME/OneDrive - Swansea University/1 Projects/EG-151 Microcontrollers 2024-2025/"

echo
echo "Updating GitHub Pages https://JahangerH.github.io/eg-151-textbook"
ghp-import --message="Quarto version of GitHub pages website rebuilt" --no-jekyll --no-history --push --force _build/html
