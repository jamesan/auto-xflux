INSTALL=install -p
PREFIX=/usr

BINDIR=$(DESTDIR)$(PREFIX)/bin
UNITDIR=$(DESTDIR)$(shell pkg-config systemd --variable systemduserunitdir)

TARGET=auto-xflux
SERVICE=$(TARGET).service

all:
	@echo "Nothing to build"

install:
	$(INSTALL) -Dm755 $(TARGET) $(BINDIR)/$(TARGET)
	$(INSTALL) -Dm644 $(SERVICE) $(UNITDIR)/$(SERVICE)

uninstall:
	rm $(BINDIR)/$(TARGET)
	rm $(UNITDIR)/$(SERVICE)

.PHONY:
	all install uninstall
