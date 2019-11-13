PD := pandoc
PDFLAGS := -s -t revealjs

fgci-openhpc.html: fgci-openhpc.md

.PHONY: clean
clean:
	-rm -f *.html


%.html: %.md 
	$(PD) $(PDFLAGS) -o $@ $<
