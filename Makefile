.PHONY: all clean

THESIS_DIR = thesis
MAIN_FILE = main

all:
	cd $(THESIS_DIR) && pdflatex $(MAIN_FILE).tex
	cd $(THESIS_DIR) && biber $(MAIN_FILE)
	cd $(THESIS_DIR) && pdflatex $(MAIN_FILE).tex
	cd $(THESIS_DIR) && pdflatex $(MAIN_FILE).tex

clean:
	cd $(THESIS_DIR) && rm -f *.aux *.log *.out *.toc *.bbl *.bcf *.blg *.run.xml *.pdf
