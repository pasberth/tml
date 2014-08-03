let default x y = match y with Some x -> x | None -> x
let flatten x = match x with Some x -> x | None -> None

let map1 (f : Xml.elt -> Xml.elt) n = f n

let rec map f n = match Xml.content n with
                    | Xml.Empty | Xml.Comment _ | Xml.PCDATA _ | Xml.EncodedPCDATA _ | Xml.Entity _ | Xml.Leaf (_, _) -> f n
                    | Xml.Node (name, attribs, elts) -> f (Xml.node ~a:attribs name (List.map (map f) elts))

let mapi f n =
  let i = ref 0 in
  map (fun a -> let x = f !i a in incr i; x) n

let iter1 (f : Xml.elt -> unit) n = f n

let rec iter f n : unit
                  = match Xml.content n with
                    | Xml.Empty | Xml.Comment _ | Xml.PCDATA _ | Xml.EncodedPCDATA _ | Xml.Entity _ | Xml.Leaf (_, _) -> f n
                    | Xml.Node (_, _, elts) -> f n; List.iter (iter f) elts

let iteri f n =
  let i = ref 0 in
  iter (fun a -> let x = f !i a in incr i; x) n

let collect1 f n =
  let x = ref None in
  iter1 (fun a -> let y = f a in x := Some y) n;
  !x

let collect f n =
  let xs = ref [] in
  iter (fun a -> let x = f a in xs := (x :: !xs)) n;
  List.rev !xs

let collect f n =
  let i = ref 0 in
  let xs = ref [] in
  iter (fun a -> let x = f a in xs := (x :: !xs); incr i) n;
  List.rev !xs

let amap1 f n = match Xml.content n with
                | Xml.Empty | Xml.Comment _ | Xml.PCDATA _ | Xml.EncodedPCDATA _ | Xml.Entity _ -> n
                | Xml.Leaf (name, attribs) -> Xml.leaf ~a:(f name attribs []) name
                | Xml.Node (name, attribs, elts) -> Xml.node ~a:(f name attribs elts) name elts

let rec amap f n = match Xml.content n with
                    | Xml.Empty | Xml.Comment _ | Xml.PCDATA _ | Xml.EncodedPCDATA _ | Xml.Entity _ -> n
                    | Xml.Leaf (name, attribs) -> Xml.leaf ~a:(f name attribs []) name
                    | Xml.Node (name, attribs, elts) -> Xml.node ~a:(f name attribs (List.map (amap f) elts)) name elts

let amapi f n =
  let i = ref 0 in
  amap (fun a b c -> let x = f !i a b c in incr i; x) n

let aiter1 f n = match Xml.content n with
                | Xml.Empty | Xml.Comment _ | Xml.PCDATA _ | Xml.EncodedPCDATA _ | Xml.Entity _ -> ()
                | Xml.Leaf (name, attribs) -> f name attribs []
                | Xml.Node (name, attribs, elts) -> f name attribs elts

let rec aiter f n = match Xml.content n with
                    | Xml.Empty | Xml.Comment _ | Xml.PCDATA _ | Xml.EncodedPCDATA _ | Xml.Entity _ -> ()
                    | Xml.Leaf (name, attribs) -> f name attribs []
                    | Xml.Node (name, attribs, elts) -> f name attribs elts; List.iter (aiter f) elts

let aiteri f n =
  let i = ref 0 in
  aiter (fun a b c -> let x = f !i a b c in incr i; x) n

let acollect1 f n =
  let x = ref None in
  aiter1 (fun a b c -> let y = f a b c in x := Some y) n;
  !x

let acollect f n =
  let xs = ref [] in
  aiter (fun a b c -> let x = f a b c in xs := (x :: !xs)) n;
  List.rev !xs

let acollecti f n =
  let i = ref 0 in
  let xs = ref [] in
  aiter (fun a b c -> let x = f !i a b c in xs := (x :: !xs); incr i) n;
  List.rev !xs

let force_get_attribs n = default [] (acollect1 (fun name attribs elts -> attribs) n)

let force_get_anames n = List.map Xml.aname (force_get_attribs n)

let aexists f n = List.exists f (force_get_anames n)

let amem k n = List.mem k (force_get_anames n)

let aget k n = flatten (acollect1 (fun name attribs elts
                                  -> if List.mem k (List.map Xml.aname attribs)
                                      then Some (Xml.acontent (List.find (fun attrib -> Xml.aname attrib = k) attribs))
                                      else None) n)

let aget_float k n = match aget k n with
                      | Some (Xml.AFloat f) -> Some f
                      | _ -> None

let aget_int k n = match aget k n with
                      | Some (Xml.AInt i) -> Some i
                      | _ -> None

let aget_string k n = match aget k n with
                      | Some (Xml.AStr s) -> Some s
                      | _ -> None

let aget_string_space_sep k n = match aget k n with
                                | Some (Xml.AStrL (Xml.Space, l)) -> Some l
                                | _ -> None

let aget_string_comma_sep k n = match aget k n with
                                | Some (Xml.AStrL (Xml.Comma, l)) -> Some l
                                | _ -> None

let make_attrib k v = match v with
                    | Xml.AFloat f -> Xml.float_attrib k f
                    | Xml.AInt i -> Xml.int_attrib k i
                    | Xml.AStr s -> Xml.string_attrib k s
                    | Xml.AStrL (Xml.Space, l) -> Xml.space_sep_attrib k l
                    | Xml.AStrL (Xml.Comma, l) -> Xml.comma_sep_attrib k l

let ainsert a =
  let k = Xml.aname a in
  amap1 (fun name attribs elts -> a :: List.filter (fun attrib -> not (Xml.aname attrib = k)) attribs)

let aset k v = ainsert (make_attrib k v)

let aset_float k f = ainsert (Xml.float_attrib k f)
let aset_int k i = ainsert (Xml.int_attrib k i)
let aset_string k s = ainsert (Xml.string_attrib k s)
let aset_space_sep k l = ainsert (Xml.space_sep_attrib k l)
let aset_comma_sep k l = ainsert (Xml.comma_sep_attrib k l)

let aalter f k n = match f (aget k n) with
                  | Some v -> aset k v n
                  | None -> n


let aadjust f k n = match aget k n with
                    | Some v -> aset k (f v) n
                    | None -> n

let aupdate f k n = match aget k n with
                    | Some v -> begin match f v with
                                | Some v -> aset k v n
                                | None -> n end
                    | None -> n

let adelete k n = amap1 (fun name attribs elts -> List.filter (fun attrib -> not (Xml.aname attrib = k)) attribs)
