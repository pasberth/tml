let pcdata (s : string) = Html5.M.pcdata s

let print = Html5.P.print ~output:print_endline

let simple t bd = Html5.M.
                          (html
                            (head
                              (title
                                (pcdata t))
                              [])
                            (body bd))

let mkid_xml prefix xml =
  Xmlext.mapi (fun i n ->
                let opt = Xmlext.acollect1
                            (fun ename _ _
                              -> match ename with
                                  | "h1" | "h2" | "h3" | "h4" | "h5" | "h6"
                                  -> Xmlext.aset_string "id" (prefix ^ "-" ^ string_of_int i) n
                                  | _ -> n)
                            n in
                match opt with
                  | Some n -> n
                  | None -> n) xml

type toc = Toc of int * Xml.elt * toc list

let mk_elt elt = begin match Xmlext.aget_string "id" elt with
                  | Some id -> begin match Xmlext.acollect1 (fun _ _ elts -> [Xml.node "a" ~a:[Xml.string_attrib "href" ("#" ^ id)] elts]) elt with
                              | Some elts -> elts
                              | None -> [elt] end
                  | None -> begin match Xmlext.acollect1 (fun _ _ elts -> elts) elt with
                          | Some elts -> elts
                          | None -> [elt] end end

let rec toc_to_elt = function
                      | Toc (_, elt, []) -> Xml.node "li" (mk_elt elt)
                      | Toc (_, elt, tocs) -> Xml.node "li" (List.append (mk_elt elt) [Xml.node "ul" (List.map toc_to_elt (List.rev tocs))])

let mktoc_xml a xml =
  let tocs = ref [] in
  let level = function
              | "h1" -> 1
              | "h2" -> 2
              | "h3" -> 3
              | "h4" -> 4
              | "h5" -> 5
              | "h6" -> 6
              | _ -> 0 in
  let rec push_toc toc tocs = match tocs with
                              | [] -> [toc]
                              | (toc1 :: tocs1)
                              -> match (toc, toc1) with
                                  | (Toc (lhs, _, _), Toc (rhs, _, _))
                                  -> if lhs = rhs then
                                        toc :: tocs
                                      else if lhs < rhs then
                                        toc :: tocs
                                      else if lhs > rhs then
                                        match toc1 with
                                          | (Toc (lvl, elt, tocs2))
                                          -> Toc (lvl, elt, push_toc toc tocs2) :: tocs1
                                      else assert false in
  Xmlext.iter (fun n -> Xmlext.aiter1
                          (fun ename _ _
                            -> match ename with
                                | "h1" | "h2" | "h3" | "h4" | "h5" | "h6"
                                -> let l = level ename in
                                    tocs := push_toc (Toc (l, n, [])) !tocs
                                | _-> ()
                              )
                          n) xml;
  Xml.node "ul" ~a:a (List.map toc_to_elt (List.rev !tocs))

let mktoc ?prefix ?a html =
  let prefix = match prefix with
                | Some prefix -> prefix
                | None -> "toc" in
  let a = match a with
          | Some a -> Html5.M.to_xmlattribs a
          | None -> [] in
  let xml = Html5.M.toelt html in
  let xml = mkid_xml prefix xml in
  (Html5.M.tot xml, Html5.M.tot (mktoc_xml a xml))

let ul ?a l = Html5.M.ul ?a (List.map Html5.M.li l)

let ulS ?a l = ul ?a (List.map (fun x -> [pcdata x]) l)

let ol ?a l = Html5.M.ol ?a (List.map Html5.M.li l)

let olS ?a l = ol ?a (List.map (fun x -> [pcdata x]) l)

let tablen ?a heads columns = Html5.M.table
                              ?a
                              ~thead:
                                (Html5.M.thead
                                  [Html5.M.tr
                                    (List.map
                                      (fun head -> Html5.M.td head)
                                      heads)])
                              (List.map
                                (fun cells
                                  -> Html5.M.tr
                                      (List.map
                                        (fun cell
                                          -> Html5.M.td
                                              cell)
                                        cells))
                                columns)

let tupleToList1 x0 = [x0]
let tupleToList2 (x0, x1) = [x0; x1]
let tupleToList3 (x0, x1, x2) = [x0; x1; x2]
let tupleToList4 (x0, x1, x2, x3) = [x0; x1; x2; x3]
let tupleToList5 (x0, x1, x2, x3, x4) = [x0; x1; x2; x3; x4]
let tupleToList6 (x0, x1, x2, x3, x4, x5) = [x0; x1; x2; x3; x4; x5]
let tupleToList7 (x0, x1, x2, x3, x4, x5, x6) = [x0; x1; x2; x3; x4; x5; x6]
let tupleToList8 (x0, x1, x2, x3, x4, x5, x6, x7) = [x0; x1; x2; x3; x4; x5; x6; x7]
let tupleToList9 (x0, x1, x2, x3, x4, x5, x6, x7, x8) = [x0; x1; x2; x3; x4; x5; x6; x7; x8]
let tupleToList10 (x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) = [x0; x1; x2; x3; x4; x5; x6; x7; x8; x9]
let tupleToList11 (x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10) = [x0; x1; x2; x3; x4; x5; x6; x7; x8; x9; x10]
let tupleToList12 (x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11) = [x0; x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11]
let tupleToList13 (x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12) = [x0; x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12]
let tupleToList14 (x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13) = [x0; x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13]
let tupleToList15 (x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14) = [x0; x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14]
let tupleToList16 (x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15) = [x0; x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15]
let tupleToList17 (x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16) = [x0; x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16]
let tupleToList18 (x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17) = [x0; x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17]
let tupleToList19 (x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18) = [x0; x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18]
let tupleToList20 (x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19) = [x0; x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19]

let table1 ?a heads columns = tablen ?a (tupleToList1 heads) (List.map tupleToList1 columns)
let table2 ?a heads columns = tablen ?a (tupleToList2 heads) (List.map tupleToList2 columns)
let table3 ?a heads columns = tablen ?a (tupleToList3 heads) (List.map tupleToList3 columns)
let table4 ?a heads columns = tablen ?a (tupleToList4 heads) (List.map tupleToList4 columns)
let table5 ?a heads columns = tablen ?a (tupleToList5 heads) (List.map tupleToList5 columns)
let table6 ?a heads columns = tablen ?a (tupleToList6 heads) (List.map tupleToList6 columns)
let table7 ?a heads columns = tablen ?a (tupleToList7 heads) (List.map tupleToList7 columns)
let table8 ?a heads columns = tablen ?a (tupleToList8 heads) (List.map tupleToList8 columns)
let table9 ?a heads columns = tablen ?a (tupleToList9 heads) (List.map tupleToList9 columns)
let table10 ?a heads columns = tablen ?a (tupleToList10 heads) (List.map tupleToList10 columns)
let table11 ?a heads columns = tablen ?a (tupleToList10 heads) (List.map tupleToList11 columns)
let table12 ?a heads columns = tablen ?a (tupleToList10 heads) (List.map tupleToList12 columns)
let table13 ?a heads columns = tablen ?a (tupleToList10 heads) (List.map tupleToList13 columns)
let table14 ?a heads columns = tablen ?a (tupleToList10 heads) (List.map tupleToList14 columns)
let table15 ?a heads columns = tablen ?a (tupleToList10 heads) (List.map tupleToList15 columns)
let table16 ?a heads columns = tablen ?a (tupleToList10 heads) (List.map tupleToList16 columns)
let table17 ?a heads columns = tablen ?a (tupleToList10 heads) (List.map tupleToList17 columns)
let table18 ?a heads columns = tablen ?a (tupleToList10 heads) (List.map tupleToList18 columns)
let table19 ?a heads columns = tablen ?a (tupleToList10 heads) (List.map tupleToList19 columns)
let table20 ?a heads columns = tablen ?a (tupleToList10 heads) (List.map tupleToList20 columns)


let tableSn ?a heads columns = tablen ?a
                              (List.map (fun head -> [pcdata head]) heads)
                              (List.map
                                (fun cells
                                  -> List.map
                                      (fun cell
                                        -> [pcdata cell])
                                      cells)
                                columns)
let tableS1 ?a heads columns = tableSn ?a (tupleToList1 heads) (List.map tupleToList1 columns)
let tableS2 ?a heads columns = tableSn ?a (tupleToList2 heads) (List.map tupleToList2 columns)
let tableS3 ?a heads columns = tableSn ?a (tupleToList3 heads) (List.map tupleToList3 columns)
let tableS4 ?a heads columns = tableSn ?a (tupleToList4 heads) (List.map tupleToList4 columns)
let tableS5 ?a heads columns = tableSn ?a (tupleToList5 heads) (List.map tupleToList5 columns)
let tableS6 ?a heads columns = tableSn ?a (tupleToList6 heads) (List.map tupleToList6 columns)
let tableS7 ?a heads columns = tableSn ?a (tupleToList7 heads) (List.map tupleToList7 columns)
let tableS8 ?a heads columns = tableSn ?a (tupleToList8 heads) (List.map tupleToList8 columns)
let tableS9 ?a heads columns = tableSn ?a (tupleToList9 heads) (List.map tupleToList9 columns)
let tableS10 ?a heads columns = tableSn ?a (tupleToList10 heads) (List.map tupleToList10 columns)
let tableS11 ?a heads columns = tableSn ?a (tupleToList10 heads) (List.map tupleToList11 columns)
let tableS12 ?a heads columns = tableSn ?a (tupleToList10 heads) (List.map tupleToList12 columns)
let tableS13 ?a heads columns = tableSn ?a (tupleToList10 heads) (List.map tupleToList13 columns)
let tableS14 ?a heads columns = tableSn ?a (tupleToList10 heads) (List.map tupleToList14 columns)
let tableS15 ?a heads columns = tableSn ?a (tupleToList10 heads) (List.map tupleToList15 columns)
let tableS16 ?a heads columns = tableSn ?a (tupleToList10 heads) (List.map tupleToList16 columns)
let tableS17 ?a heads columns = tableSn ?a (tupleToList10 heads) (List.map tupleToList17 columns)
let tableS18 ?a heads columns = tableSn ?a (tupleToList10 heads) (List.map tupleToList18 columns)
let tableS19 ?a heads columns = tableSn ?a (tupleToList10 heads) (List.map tupleToList19 columns)
let tableS20 ?a heads columns = tableSn ?a (tupleToList10 heads) (List.map tupleToList20 columns)