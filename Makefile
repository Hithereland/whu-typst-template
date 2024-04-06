.PHONY: clean

all: sample

clean:
	find . -name "*.pdf" -type f -delete

%: %.typ
	typst compile $<
