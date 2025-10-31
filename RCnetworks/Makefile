SHELL := /bin/bash

FIGS = 1 2 3 10

all: $(foreach n,$(FIGS),fig$(n).jpg)

$(foreach n,$(FIGS),fig$(n).jpg): fig%.jpg: fig%.pic
	pushd .. \
	&& cat RCnetworks/$< \
	| pic | groff -Tpdf \
	| convert -density 600 -trim - -quality 100 RCnetworks/$@ \
	&& popd

clean:
	rm -f *.jpg
