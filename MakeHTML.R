shell("call 1MakeEnglishFiles.bat")
unlink("figures", recursive=TRUE)

cat("make blind version", file= "Blind.bat")

bookdown::render_book("index.Rmd", encoding="utf-8")

unlink("Blind.bat")
unlink("LURNBlind", recursive=TRUE)

shell("ren LURN LURNBlind")


source("RunLater.R")
