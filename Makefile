.SUFFIXES: .html .pdu
.PHONY: clean all 

SRC=$(wildcard *.pdu)
HTML=$(SRC:.pdu=.html)

all: $(HTML)

clean:
	$(RM) *.html

%.html: %.pdu pdu2html
	./pdu2html $< > $@