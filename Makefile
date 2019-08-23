BIN_PATH=/usr/local/bin/
AUTO_START_PATH=/usr/share/gnome/autostart/
all: icc-brightness-gen

icc-brightness-gen: icc-brightness-gen.c
	$(CC) -W -Wall icc-brightness-gen.c -l lcms2 -o $@

clean:
	rm -f icc-brightness-gen

install: all
	mkdir -p $(DESTDIR)$(BIN_PATH)
	cp icc-brightness-gen $(DESTDIR)$(BIN_PATH)
	cp icc-brightness $(DESTDIR)$(BIN_PATH)
	mkdir -p $(DESTDIR)$(AUTO_START_PATH)
	cp icc-brightness.desktop $(DESTDIR)$(AUTO_START_PATH)
