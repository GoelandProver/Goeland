require open Logic.Goeland.FOL Logic.Goeland.LL Logic.Goeland.ND Logic.Goeland.ND_eps
             Logic.Goeland.ND_eps_full Logic.Goeland.ND_eps_aux Logic.Goeland.LL_ND;

symbol Type : TYPE;

injective symbol τ : Type → TYPE;

constant symbol ι  : Type;

symbol nnpp p : ϵ (¬ ¬ p) → ϵ p;

constant symbol select : Π (a : Type), τ a;

rule τ ι ↪ κ;

symbol foralltype : (Type → Prop) → Prop;
symbol existstype : (Type → Prop) → Prop;

symbol ∀α [a] : (τ a → Prop) → Prop; notation ∀α quantifier;
rule @∀α ι ↪ ∀;

symbol ∃α [a] : (τ a → Prop) → Prop; notation ∃α quantifier;
rule @∃α ι ↪ ∃;

symbol =α [a] : τ a → τ a → Prop; notation =α infix 12;
rule @=α ι $t $u ↪ $t = $u;

symbol GS3bot : ϵ ⊥ → ϵ ⊥; 
rule GS3bot ↪ R⊥;

symbol GS3ntop : ϵ (¬ ⊤) → ϵ ⊥;
rule GS3ntop ↪ R¬⊤;

symbol GS3axiom : Π (p : Prop), ϵ p → ϵ (¬ p) → ϵ ⊥;
rule GS3axiom ↪ Rax;

symbol Rnoteq : Π (a : Type) (t : τ a), ϵ (¬ (t =α t)) → ϵ ⊥;
rule Rnoteq ι ↪ R≠;

symbol Reqsym a (t u : τ a) : ϵ (t =α u) → ϵ (¬ (u =α t)) → ϵ ⊥;
rule Reqsym ι ↪ R=;

symbol GS3nnot p : (ϵ p → ϵ ⊥) → ϵ (¬ (¬ p)) → ϵ ⊥;
rule GS3nnot ↪ R¬¬;

symbol GS3and p q : (ϵ p → ϵ q → ϵ ⊥) → ϵ (p ∧ q) → ϵ ⊥;
rule GS3and ↪ R∧;

symbol GS3or p q : (ϵ p → ϵ ⊥) → (ϵ q → ϵ ⊥) → ϵ (p ∨ q) → ϵ ⊥;
rule GS3or ↪ R∨;

symbol GS3imp p q :  (ϵ (¬ p) → ϵ ⊥) → (ϵ q → ϵ ⊥) → ϵ (p ⇒ q) → ϵ ⊥;
rule GS3imp ↪ R⇒;

symbol GS3equ p q : 
  (ϵ (¬ p) → ϵ (¬ q) → ϵ ⊥) → (ϵ p → ϵ q → ϵ ⊥) → ϵ (p ⇔ q) → ϵ ⊥;
rule GS3equ ↪ R⇔;

symbol GS3nand p q : 
  (ϵ (¬ p) → ϵ ⊥) → (ϵ (¬ q) → ϵ ⊥) → ϵ (¬ (p ∧ q)) → ϵ ⊥;
rule GS3nand ↪ R¬∧;

symbol GS3nor p q : (ϵ (¬ p) → ϵ (¬ q) → ϵ ⊥) → ϵ (¬ (p ∨ q)) → ϵ ⊥;
rule GS3nor ↪ R¬∨;

symbol GS3nimp p q : (ϵ p → ϵ (¬ q) → ϵ ⊥) → ϵ (¬ (p ⇒ q)) → ϵ ⊥;
rule GS3nimp ↪ R¬⇒;

symbol GS3nequ p q :
  (ϵ (¬ p) → ϵ q → ϵ ⊥) → (ϵ p → ϵ (¬ q) → ϵ ⊥) → ϵ (¬ (p ⇔ q)) → ϵ ⊥;
rule GS3nequ ↪ R¬⇔;

symbol GS3ex a p : (Π (t : τ a), ϵ (p t) → ϵ ⊥) → ϵ (∃α p) → ϵ ⊥;
rule GS3ex ι ↪ R∃;

symbol GS3all a p t : (ϵ (p t) → ϵ ⊥) → ϵ (@∀α a p) → ϵ ⊥;
rule GS3all ι ↪ R∀;

symbol GS3nex a (p : (τ a → Prop)) (t : τ a) : 
  (ϵ (¬ (p t)) → ϵ ⊥) → ϵ (¬ (∃α p)) → ϵ ⊥;
rule GS3nex ι ↪ R¬∃;

symbol GS3nall a p : (Π (t : τ a), ϵ (¬ (p t)) → ϵ ⊥) → ϵ (¬ (@∀α a p)) → ϵ ⊥;
rule GS3nall ι ↪ R¬∀;

//symbol Rextype (p : (Type → Prop)) : 
//  (Π (a : Type), ϵ (p a) → ϵ ⊥) → ϵ (existstype p) → ϵ ⊥;

//symbol Ralltype (p : (Type → Prop)) a :
//  (ϵ (p a) → ϵ ⊥) → ϵ (foralltype p) → ϵ ⊥;

//symbol Rnotextype (p : (Type → Prop)) a :
//  (ϵ (¬ (p a)) → ϵ ⊥) → ϵ (¬ (existstype p)) → ϵ ⊥;

//symbol Rnotalltype (p : (Type → Prop)) : 
//  (Π (a : Type), ϵ (¬ (p a)) → ϵ ⊥) → ϵ (¬ (foralltype p)) → ϵ ⊥;

symbol Rsubst a (p : (τ a → Prop)) (t1 t2 : τ a) :
  (ϵ (¬ (t1 =α t2)) → ϵ ⊥) → (ϵ (p t2) → ϵ ⊥) → ϵ (p t1) → ϵ ⊥;
rule Rsubst ι ↪ Rσ;

symbol Rconglr a (p : (τ a → Prop)) (t1 t2 : τ a) :
  (ϵ (p t2) → ϵ ⊥) → ϵ (p t1) → ϵ (t1 =α t2) → ϵ ⊥;
rule Rconglr ι ↪ R≡r;

symbol Rcongrl a (p : (τ a → Prop)) (t1 t2 : τ a) :
  (ϵ (p t2) → ϵ ⊥) → ϵ (p t1) → ϵ (t2 =α t1) → ϵ ⊥;
rule Rcongrl ι ↪ R≡l;
