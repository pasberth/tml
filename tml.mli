val pcdata : string -> [> `PCDATA ] Html5.M.elt
val print :
  ?encode:(string -> string) -> ?advert:string -> Html5.M.doc -> unit
val simple :
  string Html5.M.wrap ->
  [< Html5_types.body_content_fun ] Html5.M.elt Html5.M.list_wrap ->
  [> `Html ] Html5.M.elt
val mktoc :
  ?prefix:string ->
  ?a:[< Html5_types.ul_attrib ] Html5.M.attrib list ->
  'a Html5.M.elt -> 'a Html5.M.elt * [> Html5_types.ul ] Html5.M.elt
val ul :
  ?a:[< Html5_types.ul_attrib ] Html5.M.attrib list ->
  [< Html5_types.li_content_fun ] Html5.M.elt Html5.M.list_wrap list ->
  [> Html5_types.ul ] Html5.M.elt
val ulS :
  ?a:[< Html5_types.ul_attrib ] Html5.M.attrib list ->
  string list -> [> Html5_types.ul ] Html5.M.elt
val ol :
  ?a:[< Html5_types.ol_attrib ] Html5.M.attrib list ->
  [< Html5_types.li_content_fun ] Html5.M.elt Html5.M.list_wrap list ->
  [> Html5_types.ol ] Html5.M.elt
val olS :
  ?a:[< Html5_types.ol_attrib ] Html5.M.attrib list ->
  string list -> [> Html5_types.ol ] Html5.M.elt
val tablen :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  [< Html5_types.td_content_fun ] Html5.M.elt Html5.M.list_wrap list ->
  [< Html5_types.td_content_fun ] Html5.M.elt Html5.M.list_wrap list list ->
  [> Html5_types.table ] Html5.M.elt
val tupleToList1 : 'a -> 'a list
val tupleToList2 : 'a * 'a -> 'a list
val tupleToList3 : 'a * 'a * 'a -> 'a list
val tupleToList4 : 'a * 'a * 'a * 'a -> 'a list
val tupleToList5 : 'a * 'a * 'a * 'a * 'a -> 'a list
val tupleToList6 : 'a * 'a * 'a * 'a * 'a * 'a -> 'a list
val tupleToList7 : 'a * 'a * 'a * 'a * 'a * 'a * 'a -> 'a list
val tupleToList8 : 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a -> 'a list
val tupleToList9 : 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a -> 'a list
val tupleToList10 :
  'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a -> 'a list
val tupleToList11 :
  'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a -> 'a list
val tupleToList12 :
  'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a -> 'a list
val tupleToList13 :
  'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a -> 'a list
val tupleToList14 :
  'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a ->
  'a list
val tupleToList15 :
  'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a ->
  'a list
val tupleToList16 :
  'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a *
  'a -> 'a list
val tupleToList17 :
  'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a *
  'a * 'a -> 'a list
val tupleToList18 :
  'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a *
  'a * 'a * 'a -> 'a list
val tupleToList19 :
  'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a *
  'a * 'a * 'a * 'a -> 'a list
val tupleToList20 :
  'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a * 'a *
  'a * 'a * 'a * 'a * 'a -> 'a list
val table1 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  [< Html5_types.td_content_fun ] Html5.M.elt Html5.M.list_wrap ->
  [< Html5_types.td_content_fun ] Html5.M.elt Html5.M.list_wrap list ->
  [> Html5_types.table ] Html5.M.elt
val table2 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table3 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table4 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table5 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table6 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table7 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table8 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table9 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table10 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table11 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table12 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table13 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table14 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table15 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table16 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table17 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table18 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table19 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table20 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val tableSn :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string list -> string list list -> [> Html5_types.table ] Html5.M.elt
val tableS1 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string -> string list -> [> Html5_types.table ] Html5.M.elt
val tableS2 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string ->
  (string * string) list -> [> Html5_types.table ] Html5.M.elt
val tableS3 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string ->
  (string * string * string) list -> [> Html5_types.table ] Html5.M.elt
val tableS4 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string ->
  (string * string * string * string) list ->
  [> Html5_types.table ] Html5.M.elt
val tableS5 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string ->
  (string * string * string * string * string) list ->
  [> Html5_types.table ] Html5.M.elt
val tableS6 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string * string ->
  (string * string * string * string * string * string) list ->
  [> Html5_types.table ] Html5.M.elt
val tableS7 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string * string * string ->
  (string * string * string * string * string * string * string) list ->
  [> Html5_types.table ] Html5.M.elt
val tableS8 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string * string * string * string ->
  (string * string * string * string * string * string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS9 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string * string * string * string *
  string ->
  (string * string * string * string * string * string * string * string *
   string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS10 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS11 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS12 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS13 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS14 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS15 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS16 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string * string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS17 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string * string * string * string *
   string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS18 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string * string * string * string *
   string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS19 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string * string * string * string *
   string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS20 :
  ?a:[< Html5_types.table_attrib ] Html5.M.attrib list ->
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string * string * string * string *
   string * string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
