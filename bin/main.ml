open Showmeyourpipes
open Cmdliner

let src =
  let doc = "Source to read from" in
  Cmdliner.Arg.(required & opt (some string) None & info ["s"; "src"] ~doc)

let info =
  let doc = "Multi source aggregator." in
  Cmdliner.Term.info "showmeyourpipes" ~doc

let run src =
  print_endline ("Read from " ^ src)

let main =
  Cmdliner.Term.(const run $ src)

let () =
  match Cmdliner.Term.eval (main, info) with
  | `Error _ -> exit 1
  | _ -> exit 0
