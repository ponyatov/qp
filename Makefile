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
