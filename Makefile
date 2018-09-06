ES_FILE=resume_es_sergio_paracuellos
EN_FILE=resume_en_sergio_paracuellos
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
