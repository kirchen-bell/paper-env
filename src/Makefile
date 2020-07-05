# command
LATEX = platex
DVIPDF = dvipdfmx
EXTRACT = extractbb
RM = rm

# files
TARGET = paper
SRC = $(TARGET).tex
DVI = $(TARGET).dvi
PDF = $(TARGET).pdf
AUX = $(TARGET).aux
LOG = $(TARGET).log
FIGS = thinking.png

# output directory
OUT_DIR = $(TARGET).pdf

$(PDF): $(DVI)
	$(DVIPDF) -o $(OUT_DIR) $<

$(DVI): $(SRC) $(FIGS)
	$(EXTRACT) $(FIGS)
	$(LATEX) $<

clean:
	$(RM) -rf $(DVI) $(PDF) $(AUX) $(LOG)
