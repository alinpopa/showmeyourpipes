.PHONY: clean build utop

all: build

clean:
	-rm -rf _build
	-rm -rf bin/.merlin
	-rm -rf src/.merlin
	-rm -rf *.install

build:
	jbuilder build @install

utop:
	jbuilder exec utop
