cat("make blind version", file= "Blind.bat")

bookdown::render_book("index.Rmd", encoding="utf-8")

unlink("Blind.bat")
unlink("LURNBlind", recursive=TRUE)

shell("ren LURN LURNBlind")


bookdown::render_book("index.Rmd", encoding="utf-8")

