SUBDIRS = arduino cnc dcs go keyboard linux music usb vr

all: index.html $(SUBDIRS)

%.html: %.adoc
	asciidoctor $<

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: all subdirs $(SUBDIRS)
