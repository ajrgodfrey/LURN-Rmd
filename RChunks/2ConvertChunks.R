
for(i in list.files(pattern=".Rnw")){
In = readLines(i)[-1]
Out = gsub(".Rnw", ".Rmd", In)
Out = gsub("<<", "```{r ", Out)
Out = gsub(">>=", "}", Out)
Out = gsub("@", "```", Out)
cat(i, "\n")
cat(paste(Out, collapse="\n"), "\n\n", file=gsub(".Rnw", ".Rmd", i))
unlink(i)
}

for(i in list.files(pattern=".Rmd")){
Out  = readLines(i)
Out = gsub("\\\\SVGLink\\{(.*)\\}", "[Link to SVG version](../SVGs/\\1.html)", Out)
Out = gsub("\\\\includegraphics\\[(.*)\\]\\{(.*)\\}", "![`r FigCap`](\\2.png)", Out)

cat(i, "\n")
cat(paste(Out, collapse="\n"), "\n\n", file=i)
}
