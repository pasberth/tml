let contents =
    (Html5.M.div [Html5.M.h1 [Html5.M.pcdata "a"];
        Html5.M.div [Html5.M.h2 [Html5.M.pcdata "b"]
            ; Html5.M.div [
              Html5.M.h3 [Html5.M.pcdata "c"];
              Html5.M.div [
                Html5.M.h3 [Html5.M.pcdata "d"];
                Html5.M.div [Html5.M.pcdata "e"]
              ];
              Html5.M.h1 [Html5.M.pcdata "f"];
              Html5.M.div [
                Html5.M.h5 [Html5.M.pcdata "g"];
                Html5.M.div [Html5.M.pcdata "h"]
              ]
            ]
      ]])
(*let () = Tml.print contents*)

let (contents, toc) = Tml.mktoc contents

let () = Tml.print (Tml.simple "example" [toc; contents])