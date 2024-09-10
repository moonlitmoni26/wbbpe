#!/bin/bash

mdbook build books/child_development_and_pedagogy
mdbook build books/language1_bengali
mdbook build books/language2_english
mdbook build books/mathematics
mdbook build books/environmental_studies

# Copy books to the html directory
mkdir -p html/books
cp -r books/child_development_and_pedagogy/book html/books/child_development_and_pedagogy
cp -r books/language1_bengali/book html/books/language1_bengali
cp -r books/language2_english/book html/books/language2_english
cp -r books/mathematics/book html/books/mathematics
cp -r books/environmental_studies/book html/books/environmental_studies

# Serve the html directory using busybox
echo "Serving the 'html' directory at http://localhost:8000"
busybox httpd -f -p 8000 -h html
