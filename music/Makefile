SUBDIRS = neutron

all: $(SUBDIRS)

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: all subdirs $(SUBDIRS)
