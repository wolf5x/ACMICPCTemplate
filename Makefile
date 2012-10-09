all: template.pdf
	mv template.pdf pdf/template.pdf
	
%.pdf: %.dvi
	dvipdfmx $<

%.dvi: %.tex
	latex $<
	latex $<

clean:
	rm -f template.dvi
	rm -f template.pdf
