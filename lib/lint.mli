(** Various linting obuilder specs. *)

val fmt_spec :
  base:string ->
  ocamlformat_source:
    (Analyse_ocamlformat.source option, [ `Msg of string ]) result ->
  selection:Selection.t ->
  Obuilder_spec.t
(** A build spec that checks the formatting. *)

val doc_spec :
  base:string ->
  opam_files:string list ->
  selection:Selection.t ->
  Obuilder_spec.t
(** A build spec that checks that the documentation in [./src/] builds without
    warnings. *)

val opam_dune_lint_spec :
  base:string ->
  opam_files:string list ->
  selection:Selection.t ->
  Obuilder_spec.t
(** A build spec that does extra linting of the dune and opam files for common
    errors. *)
