out.pdf: *
	pandoc etc/header.yml $$(cat layout.txt) --template etc/template.latex --pdf-engine=xelatex -o out.pdf --filter pandoc-citeproc
