#!/bin/bash

echo "Clearing old slides"
rm -rf slides/*
mkdir -p slides

echo "Rendering Reveal.js slides from weekly lecture files..."

for week in website/lectures/week*/index.qmd; do
  weekdir=$(dirname "$week")
  weekname=$(basename "$weekdir") # e.g. week01
  echo " - Building $weekname slides"

  quarto render "$week" --to revealjs --output "slides/${weekname}.html"
done

echo "Slides built in slides/ folder"
