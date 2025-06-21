


### Command to render from markdown
pandoc introduction.md \
       toc-placeholder.md \
       steps/*.md \
  --resource-path=steps:media \
  --from markdown \
  --to pdf \
  --output output.pdf \
  --pdf-engine=pdflatex \
  --highlight-style=tango \
  --toc \
  --toc-depth=3 \
  --from markdown+raw_tex

pandoc steps/*.md \
  --resource-path=steps:media \
  --from markdown \
  --to pdf \
  --output output.pdf \
  --pdf-engine=pdflatex \
  --highlight-style=tango \
  --toc \
  --toc-depth=3

pandoc introduction.md \
       toc.md \
       steps/*.md \
  --resource-path=steps:media \
  --from markdown \
  --to pdf \
  --output output.pdf \
  --pdf-engine=pdflatex \
  --highlight-style=tango

