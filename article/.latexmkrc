$pdflatex = 'pdflatex -interaction=nonstopmode -shell-escape';

$pdf_mode = 1;
@default_files = ('main.tex');
$out_dir = '.out';
$success_cmd = '(rm missfont.log || true) && (cp .out/main.pdf $(basename $(pwd)).pdf)';
