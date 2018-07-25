out.pdf: *
	pandoc etc/header.yml $$(cat layout.txt) --pdf-engine=xelatex -o out.pdf --filter pandoc-citeproc
