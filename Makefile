ES_FILE=curriculum_sergio
EN_FILE=curriculum_sergio_ingles
PDFLATEX=pdflatex

all: $(ES_FILE).pdf $(EN_FILE).pdf

.PHONY: clean

$(EN_FILE).pdf: $(EN_FILE).tex
	$(PDFLATEX) $(EN_FILE).tex

$(ES_FILE).pdf: $(ES_FILE).tex
	$(PDFLATEX) $(ES_FILE).tex

clean:
	rm -f $(ES_FILE).pdf
	rm -f $(EN_FILE).pdf
	rm -f *.log
