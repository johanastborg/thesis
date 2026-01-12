# von Neumann Algebra in Contemporary Physics

This repository contains the LaTeX source code for the PhD thesis "von Neumann Algebra in Contemporary Physics" and the associated Python code for data analysis.

## Structure

*   `thesis/`: Contains the LaTeX source code for the thesis.
    *   `main.tex`: The main LaTeX file.
    *   `chapters/`: Contains individual chapters.
    *   `references.bib`: Bibliography file.
*   `code/`: Contains Python code for analysis.
    *   `main.py`: Main entry point for the analysis.
    *   `tpu_utils.py`: Utilities for Google TPU initialization.
*   `data/`: Directory for storing collider data (not included in the repo).

## Prerequisites

*   Python 3.8+
*   LaTeX (TeX Live or MikTeX)

## Installation

Install the required Python packages:

```bash
pip install -r requirements.txt
```

## Usage

To run the analysis:

```bash
cd code
python main.py
```

To build the thesis PDF:

```bash
cd thesis
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex
```
