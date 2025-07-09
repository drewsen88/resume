#!/bin/bash

echo "Compiling Drew Sen's LaTeX resume..."

# Check if pdflatex is available
if ! command -v pdflatex &> /dev/null; then
    echo "Error: pdflatex not found. Please install LaTeX first."
    echo "On macOS, you can install BasicTeX with: brew install basictex"
    echo "Then run: eval \"\$(/usr/libexec/path_helper)\""
    exit 1
fi

# Compile the LaTeX file
pdflatex drew_sen_resume.tex

# Clean up auxiliary files
rm -f drew_sen_resume.aux drew_sen_resume.log

echo "Resume compiled successfully! Output: drew_sen_resume.pdf"