#  TADIST tool (OCaml 4.02)
#  Harrison Ainsworth / HXA7241 : 2015


EXE=tadist
SRC=hxaGeneral.mli hxaGeneral.ml tadist.mli tadist.ml epub.mli epub.ml tadistRenamer.mli tadistRenamer.ml tadistTool.mli tadistTool.ml
LIBSF=zip
# Note: unix.cmxa and unix.cma have been removed from the following lists to
# avert a link error/warning
LIBSN=str.cmxa utf8filter.cmxa
LIBSB=str.cma utf8filter.cma
OPTS=-principal -safe-string -strict-formats -w +A
OPTS2=-I libs/


all: exes

exes: $(EXE) $(EXE)b
$(EXE): $(SRC)
	ocamlfind ocamlopt -package $(LIBSF) -linkpkg -o $(EXE) $(OPTS) \
      $(OPTS2) $(LIBSN) $(SRC)
	rm -f *.cm[ixo] *.o
$(EXE)b: $(SRC)
	ocamlfind ocamlc -package $(LIBSF) -linkpkg -o $(EXE)b -compat-32 $(OPTS) \
      $(OPTS2) $(LIBSB) $(SRC)
	rm -f *.cm[ixo] *.o


.PHONY: clean
clean:
	rm -f *.cm[ixo] *.[ao]
	rm -f $(EXE) $(EXE)b
