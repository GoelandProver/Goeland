%------------------------------------------------------------------------------
% File     : PUZ133+3 : TPTP v8.1.2. Released v4.1.0.
% Domain   : Puzzles
% Problem  : N queens problem has the variable symmetry property
% Version  : Especial > Augmented & Reduced > Especial.
% English  : 

% Refs     : [Bau09] Baumgartner (2009), Email to G. Sutcliffe
%          : [BS09]  Baumgartner & Slaney (2009), Constraint Modelling: A C
% Source   : [Bau09]
% Names    : n-queens-symmetry-no-hacked-lemma [Bau09]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0, 0.33 v7.0.0, 0.00 v6.4.0, 0.33 v6.3.0, 0.50 v6.2.0, 0.96 v6.1.0, 0.97 v6.0.0, 1.00 v4.1.0
% Syntax   : Number of formulae    :   11 (   3 unt;   0 def)
%            Number of atoms       :   35 (  13 equ)
%            Maximal formula atoms :    8 (   3 avg)
%            Number of connectives :   30 (   6   ~;   0   |;  14   &)
%                                         (   3 <=>;   7  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    5 (   4 usr;   2 prp; 0-2 aty)
%            Number of functors    :    8 (   8 usr;   2 con; 0-2 aty)
%            Number of variables   :   23 (  23   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : This version removes an inline lemma and adds an axiom that can
%            prove it.
%------------------------------------------------------------------------------
%----queens_p =
%----         forall (i in 1..n, j in i + 1..n) (
%----                 p[i]     != p[j]
%----         /\      p[i] + i != p[j] + j
%----         /\      p[i] - i != p[j] - j
%----         );
%----... in terms of decision variables named p:
fof(queens_p,axiom,
    ( queens_p
   => ! [I,J] :
        ( ( le(s(n0),I)
          & le(I,n)
          & le(s(I),J)
          & le(J,n) )
       => ( p(I) != p(J)
          & plus(p(I),I) != plus(p(J),J)
          & minus(p(I),I) != minus(p(J),J) ) ) ) ).

%----The permutation function ('s' is successor):
fof(permutation,axiom,
    ! [I] : perm(I) = minus(s(n),I) ).

%----... in terms of decision variables named q:
fof(queens_q,axiom,
    ( ! [I,J] :
        ( ( le(s(n0),I)
          & le(I,n)
          & le(s(I),J)
          & le(J,n) )
       => ( q(I) != q(J)
          & plus(q(I),I) != plus(q(J),J)
          & minus(q(I),I) != minus(q(J),J) ) )
   => queens_q ) ).

%----To prove: "queens_p /\ q is a permutation of p => queens_q"
fof(queens_sym,conjecture,
    ( ( queens_p
      & ! [I] : q(I) = p(perm(I)) )
   => queens_q ) ).

%----Properties of permutations
%----Permutation stays in range 1..n:
fof(permutation_range,axiom,
    ! [I] :
      ( ( le(s(n0),I)
        & le(I,n) )
     => ( le(s(n0),perm(I))
        & le(perm(I),n) ) ) ).

%----The permutation is anti-monotone:
fof(permutation_anti_monotone,axiom,
    ! [I,J] :
      ( lt(I,J)
    <=> lt(perm(J),perm(I)) ) ).

%----Lemma
fof(permutation_another_one,axiom,
    ! [J,I] : minus(I,J) = minus(perm(J),perm(I)) ).

%----Integer theory axioms
%----Orderings
%----Axioms for less_or_equal:
%----fof(le_ref, axiom,      (! [X] : le(X,X))).
fof(le_trans,axiom,
    ! [X,Y,Z] :
      ( ( le(X,Y)
        & le(Y,Z) )
     => le(X,Z) ) ).

%----Successors
fof(succ_le,axiom,
    ! [X] : le(X,s(X)) ).

%----Plus and minus
fof(plus1,axiom,
    ! [I,J,K,L] :
      ( plus(I,J) = plus(K,L)
    <=> minus(I,K) = minus(L,J) ) ).

%----Important
fof(minus1,axiom,
    ! [I,J,K,L] :
      ( minus(I,J) = minus(K,L)
    <=> minus(I,K) = minus(J,L) ) ).

%------------------------------------------------------------------------------
