val pcdata : string -> [> `PCDATA ] Html5.M.elt
val print :
  ?encode:(string -> string) -> ?advert:string -> Html5.M.doc -> unit
val simple :
  string Html5.M.wrap ->
  [< Html5_types.body_content_fun ] Html5.M.elt Html5.M.list_wrap ->
  [> `Html ] Html5.M.elt
val mktoc :
  ?prefix:string ->
  'a Html5.M.elt -> 'a Html5.M.elt * [> Html5_types.ul ] Html5.M.elt
val ul :
  [< Html5_types.li_content_fun ] Html5.M.elt Html5.M.list_wrap list ->
  [> Html5_types.ul ] Html5.M.elt
val ulS : string list -> [> Html5_types.ul ] Html5.M.elt
val ol :
  [< Html5_types.li_content_fun ] Html5.M.elt Html5.M.list_wrap list ->
  [> Html5_types.ol ] Html5.M.elt
val olS : string list -> [> Html5_types.ol ] Html5.M.elt
val tablen :
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
  [< Html5_types.td_content_fun ] Html5.M.elt Html5.M.list_wrap ->
  [< Html5_types.td_content_fun ] Html5.M.elt Html5.M.list_wrap list ->
  [> Html5_types.table ] Html5.M.elt
val table2 :
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table3 :
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table4 :
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table5 :
  ([< Html5_types.td_content_fun ] as 'a) Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap *
  'a Html5.M.elt Html5.M.list_wrap * 'a Html5.M.elt Html5.M.list_wrap ->
  (([< Html5_types.td_content_fun ] as 'b) Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap *
   'b Html5.M.elt Html5.M.list_wrap * 'b Html5.M.elt Html5.M.list_wrap)
  list -> [> Html5_types.table ] Html5.M.elt
val table6 :
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
  string list -> string list list -> [> Html5_types.table ] Html5.M.elt
val tableS1 : string -> string list -> [> Html5_types.table ] Html5.M.elt
val tableS2 :
  string * string ->
  (string * string) list -> [> Html5_types.table ] Html5.M.elt
val tableS3 :
  string * string * string ->
  (string * string * string) list -> [> Html5_types.table ] Html5.M.elt
val tableS4 :
  string * string * string * string ->
  (string * string * string * string) list ->
  [> Html5_types.table ] Html5.M.elt
val tableS5 :
  string * string * string * string * string ->
  (string * string * string * string * string) list ->
  [> Html5_types.table ] Html5.M.elt
val tableS6 :
  string * string * string * string * string * string ->
  (string * string * string * string * string * string) list ->
  [> Html5_types.table ] Html5.M.elt
val tableS7 :
  string * string * string * string * string * string * string ->
  (string * string * string * string * string * string * string) list ->
  [> Html5_types.table ] Html5.M.elt
val tableS8 :
  string * string * string * string * string * string * string * string ->
  (string * string * string * string * string * string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS9 :
  string * string * string * string * string * string * string * string *
  string ->
  (string * string * string * string * string * string * string * string *
   string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS10 :
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS11 :
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS12 :
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS13 :
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS14 :
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS15 :
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS16 :
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string * string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS17 :
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string * string * string * string *
   string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS18 :
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string * string * string * string *
   string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS19 :
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string * string * string * string *
   string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
val tableS20 :
  string * string * string * string * string * string * string * string *
  string * string ->
  (string * string * string * string * string * string * string * string *
   string * string * string * string * string * string * string * string *
   string * string * string * string)
  list -> [> Html5_types.table ] Html5.M.elt
