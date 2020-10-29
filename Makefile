SUBDIRS = dcs music cnc

all: index.html $(SUBDIRS)

%.html: %.adoc
	asciidoctor $<

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: all subdirs $(SUBDIRS)
