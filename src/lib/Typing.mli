module Ctx :
sig
  type t
  val emp : t
  val ext : t -> Val.can Val.t -> t
  val def : t -> ty:Val.can Val.t -> tm:Val.can Val.t -> t
  val env : t -> Val.env
end

type ctx = Ctx.t

val check : ctx:ctx -> ty:Val.can Val.t -> tm:Tm.chk Tm.t -> unit
val infer : ctx:ctx -> tm:Tm.inf Tm.t -> Val.can Val.t