SUBDIRS = neutron

all: modular.html $(SUBDIRS)

%.html: %.adoc
	asciidoctor $<

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: all subdirs $(SUBDIRS)
