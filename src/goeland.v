Require Export Classical.

Lemma goeland_notnot : forall P : Prop,
  P -> (~ P -> False).
Proof. tauto. Qed.

Lemma goeland_nottrue :
  (~True -> False).
Proof. tauto. Qed.

Lemma goeland_and : forall P Q : Prop,
  (P -> (Q -> False)) -> (P /\ Q -> False).
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
