# var
MODULE = $(notdir $(CURDIR))
module = $(shell echo $(MODULE) | tr A-Z a-z)
OS     = $(shell uname -o|tr / _)
NOW    = $(shell date +%d%m%y)
REL    = $(shell git rev-parse --short=4 HEAD)
BRANCH = $(shell git rev-parse --abbrev-ref HEAD)

# tool
CURL   = curl -L -o
CF     = clang-format

# doc
.PHONY: doc
doc: \
	doc/PSiCC2.pdf doc/AN_QP_and_POSIX.pdf

	rsync -rv ~/mdoc/$(MODULE)/* doc/$(MODULE)/
	git add doc

doc/PSiCC2.pdf:
	$(CURL) $@ https://www.state-machine.com/doc/PSiCC2.pdf
doc/AN_QP_and_POSIX.pdf:
	$(CURL) $@ https://www.state-machine.com/doc/AN_QP_and_POSIX.pdf

# install
install update: doc
	sudo apt update
	sudo apt install -yu `cat apt.txt`

# merge
MERGE  = Makefile README.md .clang-format .doxygen $(S)
MERGE += apt.txt apt.msys
MERGE += .vscode bin doc lib inc src tmp

dev:
	git push -v
	git checkout $@
	git pull -v
	git checkout shadow -- $(MERGE)
	$(MAKE) doc  ; git add doc
#	$(MAKE) doxy ; git add -f docs

shadow:
	git push -v
	git checkout $@
	git pull -v

release:
	git tag $(NOW)-$(REL)
	git push -v --tags
	$(MAKE) shadow

ZIP = tmp/$(MODULE)_$(NOW)_$(REL)_$(BRANCH).zip
zip:
	git archive --format zip --output $(ZIP) HEAD
