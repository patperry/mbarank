RMDFILE=mbarank

all: $(RMDFILE).html

$(RMDFILE).html: $(RMDFILE).Rmd
	Rscript -e 'library("knitr"); knit2html("$(RMDFILE).Rmd")'

clean:
	rm -rf cache figure $(RMDFILE).html $(RMDFILE).md

.PHONY: all clean
