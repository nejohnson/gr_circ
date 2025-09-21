
test.pdf: test.pic
	cat test.pic | pic | groff -Tpdf > test.pdf

clean:
	rm -f test.pdf
