
UNAME = $(shell uname)
ifneq ($(wildcard Makefile.$(UNAME)),)
else
	UNAME = default
endif

all:
%:
	@echo "Building for $(UNAME)"
	$(MAKE) -f Makefile.$(UNAME) $*


