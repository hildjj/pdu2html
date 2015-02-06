.SUFFIXES: .html .pdu
.PHONY: clean all

SRC=$(wildcard examples/*.pdu)
HTML=$(SRC:.pdu=.html)

all: $(HTML)

clean:
	$(RM) examples/*.html

%.html: %.pdu pdu2html
	./pdu2html $< > $@
