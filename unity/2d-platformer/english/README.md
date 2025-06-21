


### Command to render from markdown
pandoc introduction.md \
       toc.md \
       steps/*.md \
  --resource-path=steps:media \
  --from markdown \
  --to pdf \
  --output output.pdf \
  --pdf-engine=pdflatex \
  --highlight-style=tango \
  --number-sections \
  -V geometry:margin=2cm
