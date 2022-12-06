REQUIRED_MAKE_VERSION:=4.0
ifneq ($(REQUIRED_MAKE_VERSION), $(firstword $(sort $(MAKE_VERSION) $(REQUIRED_MAKE_VERSION))))
  $(error Bad 'make' version $(MAKE_VERSION), required a version $(REQUIRED_MAKE_VERSION) or higher)
endif

INSTALL ?= install -D
PREFIX ?= /lib
INSTALL_OPT = -m 0644

VERSION:= 1.0.0

INSTALL_PATH ?= ${PREFIX}/firmware/

install:
	mkdir -p ${INSTALL_PATH}
	$(INSTALL) $(INSTALL_OPT) ${VERSION}/lib/firmware/* "${INSTALL_PATH}";

.PHONY: install
