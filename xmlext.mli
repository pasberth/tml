val map1 : (Xml.elt -> Xml.elt) -> Xml.elt -> Xml.elt
val map : (Xml.elt -> Xml.elt) -> Xml.elt -> Xml.elt
val mapi : (int -> Xml.elt -> Xml.elt) -> Xml.elt -> Xml.elt
val iter1 : (Xml.elt -> unit) -> Xml.elt -> unit
val iter : (Xml.elt -> unit) -> Xml.elt -> unit
val iteri : (int -> Xml.elt -> unit) -> Xml.elt -> unit
val collect1 : (Xml.elt -> 'a) -> Xml.elt -> 'a option
val collect : (Xml.elt -> 'a) -> Xml.elt -> 'a list
val amap1 :
  (Xml.ename -> Xml.attrib list -> Xml.elt list -> Xml.attrib list) ->
  Xml.elt -> Xml.elt
val amap :
  (Xml.ename -> Xml.attrib list -> Xml.elt list -> Xml.attrib list) ->
  Xml.elt -> Xml.elt
val amapi :
  (int -> Xml.ename -> Xml.attrib list -> Xml.elt list -> Xml.attrib list) ->
  Xml.elt -> Xml.elt
val aiter1 :
  (Xml.ename -> Xml.attrib list -> Xml.elt list -> unit) -> Xml.elt -> unit
val aiter :
  (Xml.ename -> Xml.attrib list -> Xml.elt list -> unit) -> Xml.elt -> unit
val aiteri :
  (int -> Xml.ename -> Xml.attrib list -> Xml.elt list -> unit) ->
  Xml.elt -> unit
val acollect1 :
  (Xml.ename -> Xml.attrib list -> Xml.elt list -> 'a) ->
  Xml.elt -> 'a option
val acollect :
  (Xml.ename -> Xml.attrib list -> Xml.elt list -> 'a) -> Xml.elt -> 'a list
val acollecti :
  (int -> Xml.ename -> Xml.attrib list -> Xml.elt list -> 'a) ->
  Xml.elt -> 'a list
val force_get_attribs : Xml.elt -> Xml.attrib list
val force_get_anames : Xml.elt -> Xml.aname list
val aexists : (Xml.aname -> bool) -> Xml.elt -> bool
val amem : Xml.aname -> Xml.elt -> bool
val aget : Xml.aname -> Xml.elt -> Xml.acontent option
val aget_float : Xml.aname -> Xml.elt -> float option
val aget_int : Xml.aname -> Xml.elt -> int option
val aget_string : Xml.aname -> Xml.elt -> string option
val aget_string_space_sep : Xml.aname -> Xml.elt -> string list option
val aget_string_comma_sep : Xml.aname -> Xml.elt -> string list option
val make_attrib : Xml.aname -> Xml.acontent -> Xml.attrib
val ainsert : Xml.attrib -> Xml.elt -> Xml.elt
val aset : Xml.aname -> Xml.acontent -> Xml.elt -> Xml.elt
val aset_float : Xml.aname -> float -> Xml.elt -> Xml.elt
val aset_int : Xml.aname -> int -> Xml.elt -> Xml.elt
val aset_string : Xml.aname -> string -> Xml.elt -> Xml.elt
val aset_space_sep : Xml.aname -> string list -> Xml.elt -> Xml.elt
val aset_comma_sep : Xml.aname -> string list -> Xml.elt -> Xml.elt
val aalter :
  (Xml.acontent option -> Xml.acontent option) ->
  Xml.aname -> Xml.elt -> Xml.elt
val aadjust :
  (Xml.acontent -> Xml.acontent) -> Xml.aname -> Xml.elt -> Xml.elt
val aupdate :
  (Xml.acontent -> Xml.acontent option) -> Xml.aname -> Xml.elt -> Xml.elt
val adelete : Xml.aname -> 'a -> Xml.elt -> Xml.elt
