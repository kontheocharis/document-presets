latex-command = pdflatex -halt-on-error -output-directory out main.tex 
bib-command = biber --output-directory out main.bcf
gnuplot-command = cd out && gnuplot *.gnuplot && cd ..

out/*.pdf: *
	# $(gnuplot-command)
	$(latex-command)
	$(bib-command)
	# $(gnuplot-command)
	$(latex-command)
	$(latex-command)
