Require Export Classical.

Lemma goeland_notnot : forall P : Prop,
  P -> (~ P -> False).
Proof. tauto. Qed.

Lemma goeland_nottrue :
  (~True -> False).
Proof. tauto. Qed.

Lemma goeland_noteq : forall (T : Type) (t : T),
  ((t <> t) -> False).
Proof. tauto. Qed.

Lemma goeland_eqsym : forall (T : Type) (t u : T),
  t = u -> u <> t -> False.
Proof. auto. Qed.

Lemma goeland_and : forall P Q : Prop,
  (P -> Q -> False) -> (P /\ Q -> False).
Proof. tauto. Qed.

Lemma goeland_or : forall P Q : Prop,
  (P -> False) -> (Q -> False) -> (P \/ Q -> False).
Proof. tauto. Qed.

Lemma goeland_imply : forall P Q : Prop,
  (~P -> False) -> (Q -> False) -> ((P -> Q) -> False).
Proof. tauto. Qed.

Lemma goeland_equiv : forall P Q : Prop,
  (~P -> ~Q -> False) -> (P -> Q -> False) -> ((P <-> Q) -> False).
Proof. tauto. Qed.

Lemma goeland_notand : forall P Q : Prop,
  (~P -> False) -> (~Q -> False) -> (~(P /\ Q) -> False).
Proof. tauto. Qed.

Lemma goeland_notor : forall P Q : Prop,
  (~P -> ~Q -> False) -> (~(P \/ Q) -> False).
Proof. tauto. Qed.

Lemma goeland_notimply : forall P Q : Prop,
  (P -> ~Q -> False) -> (~(P -> Q) -> False).
Proof. tauto. Qed.

Lemma goeland_notequiv : forall P Q : Prop,
  (~P -> Q -> False) -> (P -> ~Q -> False) -> (~(P <-> Q) -> False).
Proof. tauto. Qed.

Lemma goeland_ex : forall (T : Type) (P : T -> Prop),
  (forall z : T, ((P z) -> False)) -> ((exists x : T, (P x)) -> False).
Proof. firstorder. Qed.

Lemma goeland_all : forall (T : Type) (P : T -> Prop) (t : T),
  ((P t) -> False) -> ((forall x : T, (P x)) -> False).
Proof. firstorder. Qed.

Lemma goeland_notex : forall (T : Type) (P : T -> Prop) (t : T),
  (~(P t) -> False) -> (~(exists x : T, (P x)) -> False).
Proof. firstorder. Qed.

Lemma goeland_notall : forall (T : Type) (P : T -> Prop),
  (forall z : T, (~(P z) -> False)) -> (~(forall x : T, (P x)) -> False).
Proof. intros T P Ha Hb. apply Hb. intro. apply NNPP. exact (Ha x). Qed.

Lemma goeland_notallex : forall (T : Type) (P : T -> Prop),
  ((exists x : T, ~ (P x)) -> False) -> (~(forall x : T, (P x)) -> False).
Proof.
  firstorder. apply H0. intro x. apply NNPP. intro nPx. apply (H x nPx).
Qed.

Arguments goeland_notallex [T].

Lemma goeland_subst :
  forall (T : Type) (P : T -> Prop) (a b : T),
  (a <> b -> False) -> (P b -> False) -> (P a -> False).
Proof. intros T P a b heq h1 h2. rewrite (NNPP (a = b)) in h2; auto. Qed.

Lemma goeland_pnotp : forall P Q : Prop,
  (P = Q) -> (P -> ~Q -> False).
Proof. intros P Q Ha. rewrite Ha. auto. Qed.

Lemma goeland_notequal : forall (T : Type) (a b : T),
  (a = b) -> (a <> b -> False).
Proof. auto. Qed.

Lemma goeland_congruence_lr :
  forall (T : Type) (P : T -> Type) (a b : T),
  (P b -> False) -> (P a -> a = b -> False).
Proof. intros T P a b h1 h2 heq. rewrite heq in h2; auto. Qed.

Lemma goeland_congruence_rl :
  forall (T : Type) (P : T -> Type) (a b : T),
  (P b -> False) -> (P a -> b = a -> False).
Proof. intros T P a b h1 h2 heq. rewrite <- heq in h2; auto. Qed.

Ltac goeland_intro id :=
  intro id || let nid := fresh in (intro nid; try clear nid)
.

Definition goeland_and_s := fun P Q c h => goeland_and P Q h c.
Definition goeland_or_s := fun P Q c h i => goeland_or P Q h i c.
Definition goeland_imply_s := fun P Q c h i => goeland_imply P Q h i c.
Definition goeland_equiv_s := fun P Q c h i => goeland_equiv P Q h i c.
Definition goeland_notand_s := fun P Q c h i => goeland_notand P Q h i c.
Definition goeland_notor_s := fun P Q c h => goeland_notor P Q h c.
Definition goeland_notimply_s := fun P Q c h => goeland_notimply P Q h c.
Definition goeland_notequiv_s := fun P Q c h i => goeland_notequiv P Q h i c.
Definition goeland_ex_s := fun T P c h => goeland_ex T P h c.
Definition goeland_notall_s := fun T P c h => goeland_notall T P h c.
Definition goeland_notallex_s := fun T P c h => @goeland_notallex T P h c.

Arguments goeland_notallex_s [T].

Definition goeland_subst_s := fun T P x y c h i => goeland_subst T P x y h i c.
Definition goeland_pnotp_s := fun P Q c h i => goeland_pnotp P Q h i c.
Definition goeland_notequal_s := fun T x y c h => goeland_notequal T x y h c.

Definition goeland_congruence_lr_s :=
  fun T P a b c1 c2 h => goeland_congruence_lr T P a b h c1 c2.
Definition goeland_congruence_rl_s :=
  fun T P a b c1 c2 h => goeland_congruence_rl T P a b h c1 c2.

Lemma goeland_equal_base : forall (T : Type) (f : T), f = f.
Proof. auto. Qed.

Lemma goeland_equal_step :
  forall (S T : Type) (fa fb : S -> T) (a b : S),
  (fa = fb) -> (a <> b -> False) -> ((fa a) = (fb b)).
Proof. intros. rewrite (NNPP (a = b)). congruence. auto. Qed.

(* ------------------------------------------------------------ *)

Lemma goeland_recfun_unfold :
  forall (A : Type) (P : A -> Prop) (a b : A) (eqn : a = b),
  (P b -> False) -> P a -> False.
Proof.
  intros A P a b eqn H pa.
  apply H.
  rewrite <- eqn.
  auto.
Qed.

Arguments goeland_recfun_unfold [A].

Definition goeland_recfun_unfold_s :=
  fun A P a b eqn c h => @goeland_recfun_unfold A P a b eqn h c
.

Arguments goeland_recfun_unfold_s [A].
