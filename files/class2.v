(** This file formalizes the main result (Theorem 3) from the LICS 2019 paper of Nicolai Kraus
    and Jakob von Raumer, "Path Spaces of Higher Inductive Types in Homotopy Type Theory" **)

Require Import Basics Types Coeq UnivalenceAxiom.

Local Open Scope path_scope.

Section Quot.
  
  Context (A : Type) (R : A -> A -> Type).

  Definition Quot : Type := @Coeq {b : A * A & R (fst b) (snd b)} A (fun x => fst (x.1))
    (fun x => snd (x.1)).

  Definition inj a : Quot := coeq a.
  
  Notation "[ a ]" := (inj a).

  Definition glue {a b} (s : R a b) : [a] = [b] := cp ((a,b);s).

  Definition Quot_ind (P : Quot -> Type) (f : forall a, P [a])
    (g : forall a b (s : R a b), (glue s) # (f a) = f b) : forall x, P x
    := fun x => (Coeq_ind _ _ (fun b => g _ _ b.2) _).

  Definition Quot_ind_beta (P : Quot -> Type) (f : forall a, P [a])
    (g : forall a b (s : R a b), (glue s) # (f a) = f b) :
    forall a b (s : R a b), apD (Quot_ind P f g) (glue s) = g _ _ s
    := fun a b s => Coeq_ind_beta_cp _ _ _ ((a,b);s).

  Definition Quot_rec (P : Type) (f : A -> P) (g : forall a b (s : R a b), f a = f b) :
    Quot -> P := Quot_ind _ f (fun a b s => (transport_const _ _) @ g _ _ s).

  Theorem Quot_rec_beta (P : Type) (f : A -> P) (g : forall a b (s : R a b), f a = f b) :
    forall a b (s : R a b), ap (Quot_rec P f g) (glue s) = g _ _ s.
  Proof.
    intros; apply (cancelL (transport_const (glue s) _)).
    refine ((apD_const (Quot_rec P f g) _)^ @_); refine (Quot_ind_beta _ _ _ _ _ _).
  Defined.

Section Quot_path_ind.

  Context (a : A) (P : forall {b : A}, [a] = [b] -> Type) (r : P 1)
    (e : forall {b c : A} (s : R b c) (q : [a] = [b]), P q <~> P (q @ glue s)).

  Arguments P {b}.
  Arguments e {b c}.

  Let E {x y : Quot} (p : x = y) {F : [a] = x -> Type} {G : [a] = y -> Type} :
    (transport (fun z => [a] = z -> Type) p F = G) <~> (forall q, F q <~> G (q @ p)).
  Proof.
    induction p; apply (@equiv_compose' _ (forall q, F q = G q)).
    - apply equiv_functor_forall_id; intro q; induction q; apply equiv_equiv_path.
    - apply equiv_apD10.
  Defined.

  Let P' : forall {x}, [a] = x -> Type := Quot_ind _ (@P) (fun _ _ s => (E _)^-1 (e s)).
  
  Let ind' {x} (q : [a] = x) : P' q.
  Proof.
    induction q; exact r.
  Defined.

  Definition ind {b} : forall (q : [a] = [b]), P q := @ind' [b].

  Definition ind_beta {b c} (s : R b c) (q : [a] = [b]) : ind (q @ glue s) = e s q (ind q).
  Proof.
    assert (H : ind' (q @ (glue s)) = E _ (apD (@P') (glue s)) q (ind' q)).
    { revert q; generalize (glue s) as p; generalize ([b]) as x; induction p; induction q.
      exact 1.
    }
    exact (H @ (ap10_equiv (apD10 (moveR_equiv_M _ _ (Quot_ind_beta _ _ _ _ _ _)) _) _)).
  Defined.

  End Quot_path_ind.

End Quot.