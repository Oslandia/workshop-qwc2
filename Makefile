#
# Command for creating 7z volumes for the ova file:
# 7z -v1g -m0=Copy -mx=0 a workshop-qwc2.ova.7z workshop-qwc2.ova
# -m0=Copy -mx=0 are use to avoid compression
#
# Command for extracting the ova file from 7z volumes:
# 7z x workshop-qwc2.ova.7z.001
#
STEM=workshop-qwc2

OVA=$(addsuffix .ova,$(STEM))
7Z=$(addsuffix .7z,$(OVA))
MD5=$(addsuffix .md5,$(OVA))
7ZV1=$(addsuffix .001,$(7Z))

.PHONY: all
all: $(7ZV1) $(MD5)

$(7ZV1): $(OVA)
	7z -v1g -m0=Copy -mx=0 a $(7Z) $<

$(MD5): $(OVA)
	md5sum $< > $@

.PHONY: md5-check
md5-check: $(MD5)
	md5sum -c $(MD5)

.PHONY: clean
clean:
	rm -f *.7z*
	rm -f *.md5

.PHONY: cleanall
cleanall: clean
	rm -f *.ova
	rm -f *.vmdk
