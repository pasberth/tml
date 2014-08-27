xmlext.cmo: xmlext.mli xmlext.ml
	ocamlfind ocamlc -package tyxml xmlext.mli
	ocamlfind ocamlc -package tyxml -linkpkg xmlext.ml
tml.cmo: xmlext.cmo tml.mli tml.ml
	ocamlfind ocamlc -package tyxml tml.mli
	ocamlfind ocamlc -package tyxml -linkpkg xmlext.cmo tml.ml
