TEX = xelatex

.PHONY: cv view clean

cv: compiled/vitae-hm.pdf

view:
	open compiled/vitae-hm.pdf

compiled/vitae-hm.pdf: vitae-hm.tex
	latexmk  -xelatex -use-make vitae-hm.tex
	mv vitae-hm.pdf compiled/

clean:
	latexmk -CA
	rm compiled/*.pdf