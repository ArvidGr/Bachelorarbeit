# Wird von latexmk (und damit vom automatischen Build in LaTeX Workshop) gelesen.
# Mit outdir=build ruft latexmk BibTeX im Ordner build/ auf. Von dort aus findet
# BibTeX Literatur/Literatur.bib nur, wenn der übergeordnete Ordner im Suchpfad steht.
$bibtex = 'bibtex -include-directory=.. %O %B';
