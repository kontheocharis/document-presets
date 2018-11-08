latex-command = pdflatex -halt-on-error -output-directory out document/main.tex 
bib-command = biber --output-directory out main.bcf

out/*.pdf: *
	$(latex-command)
	$(bib-command)
	$(latex-command)
	$(latex-command)
