SHELL := /bin/bash

FIGS = 1 2 3 4 5 6 7 8 9 10

all: $(foreach n,$(FIGS),fig$(n).jpg)

$(foreach n,$(FIGS),fig$(n).jpg): fig%.jpg: fig%.pic
	pushd .. \
	&& cat RCnetworks/$< \
	| pic | groff -Tpdf \
	| convert -density 600 -trim - -quality 100 RCnetworks/$@ \
	&& popd

clean:
	rm -f *.jpg
