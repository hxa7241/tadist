
TADIST tool
======================================================================


Harrison Ainsworth / HXA7241 : 2015  
http://www.hxa.name/tools

2015-05-23  




Contents
--------

* Description
* Build
* Changes
* Acknowledgements
* Metadata



Description
-----------

A small command-line tool that does one of three things:
* suggests a name for a file, from examined file data/metadata
* renames a file, from examined file data/metadata
* converts a string between 'name-form' and 'text-form'

... according to the TADIST format definition:
http://www.hxa.name/notes/note-hxa7241-20141231T1101Z.html

File-types supported: Epub.

Usage:
   tadist [-?|--help]
   tadist (-??|--doc)
   tadist [-(s|r|R)] (-|<filename>)
   tadist -c (-|<string>)

Options:
   -?  | --help  help
   -?? | --doc   more doc
   -s  suggest: print inferred name (default)
   -r  rename: ask to rename file to inferred name
   -R  rename: go ahead and rename file to inferred name
   -c  convert: between name and text form
   -   take filename/string from stdin
   <string>  (use single quotes to quote)



Build
-----

Requirements:
* OCaml 4.02 (or thereabouts)
* ocamlfind

Library dependencies (other versions may suffice):
* camlzip 1.05 -- installed so as to be accessible to ocamlfind
* utf8filter 3 -- put files into libs/ directory

Run make, to produce:
* tadist  -- native executable
* tadistb -- OCaml bytecode executable



Changes
-------

### Version 1 : 2015-05-23 ###

Supports Epub files.

(OCaml 4.02)



Acknowledgements
----------------

Uses:
* CamlZip 1.05 -- http://forge.ocamlcore.org/projects/camlzip/
* Utf8filter 3 -- http://www.hxa.name/tools/index.html#utf8filter
   * https://github.com/hxa7241/utf8filter



Metadata
--------

DC:`
   title:`TADIST tool 1`
   creator:`Harrison Ainsworth / HXA7241`

   date:`2015-05-23`

   description:`A small command-line tool that: suggests a name, or renames a file, from examined file data/metadata; and converts between name formats.`
   subject:`command-line, file-metadata, renaming, Epub, OCaml, TADIST`

   type:`software`
   language:`en-GB`
   language:`OCaml 4.02`
   format:`text/ocaml`

   relation:`http://www.hxa.name`
   identifier:`http://www.hxa.name/tools/#tadist`
   rights:`Creative Commons CC0 1.0 Universal License`

   references:`http://forge.ocamlcore.org/projects/camlzip/`
   references:`http://www.hxa.name/tools/index.html#utf8filter`
`
