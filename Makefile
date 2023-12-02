TEX=pdflatex
BUILDDIR=build
TEXFLAGS=-interaction=nonstopmode -output-directory=$(BUILDDIR)

.PHONY: all clean copy

all: resume.pdf copy

%.pdf: %.tex
	mkdir -p $(BUILDDIR)
	$(TEX) $(TEXFLAGS) $*.tex
	$(TEX) $(TEXFLAGS) $*.tex


copy:
	cp $(BUILDDIR)/*.pdf .

clean:
	rm -f *.aux *.log *.out *.pdf *.toc

