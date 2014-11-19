GENERATED_FILES=poly.pdf poly.log poly.out poly.aux poly.toc

all: poly.pdf

poly.pdf: poly.tex
	pdflatex poly.tex
	latex_count=8	                                \
	while egrep -s 'Rerun (LaTeX|to)' poly.log && [ $$latex_count -gt 0 ] ;\
		echo '** Re-running LaTeX **';              \
		pdflatex poly.tex                         \
	done

clean:
	-test -z "$(GENERATED_FILES)" || rm -f $(GENERATED_FILES)

.PHONY: all clean
