SUBDIRS = dcs music

all: index.html $(SUBDIRS)

index.html: index.adoc
	asciidoctor index.adoc

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: all subdirs $(SUBDIRS)
