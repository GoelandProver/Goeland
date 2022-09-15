%------------------------------------------------------------------------------
% File     : PUZ133+1 : TPTP v8.1.0. Released v4.1.0.
% Domain   : Puzzles
% Problem  : N queens problem has the variable symmetry property
% Version  : Especial.
% English  : 

% Refs     : [Bau08] Baumgartner (2008), Email to G. Sutcliffe
%          : [BS09]  Baumgartner & Slaney (2009), Constraint Modelling: A C
% Source   : [Bau08]
% Names    :

% Status   : Theorem
% Rating   : 0.44 v8.1.0, 0.39 v7.5.0, 0.41 v7.4.0, 0.37 v7.3.0, 0.41 v7.2.0, 0.38 v7.1.0, 0.35 v7.0.0, 0.40 v6.4.0, 0.50 v6.3.0, 0.42 v6.2.0, 0.56 v6.1.0, 0.53 v6.0.0, 0.43 v5.5.0, 0.63 v5.4.0, 0.57 v5.3.0, 0.67 v5.2.0, 0.60 v5.1.0, 0.67 v4.1.0
% Syntax   : Number of formulae    :   10 (   3 unt;   0 def)
%            Number of atoms       :   35 (  13 equ)
%            Maximal formula atoms :   10 (   3 avg)
%            Number of connectives :   31 (   6   ~;   0   |;  15   &)
%                                         (   3 <=>;   7  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    4 (   3 usr;   2 prp; 0-2 aty)
%            Number of functors    :    8 (   8 usr;   2 con; 0-2 aty)
%            Number of variables   :   21 (  21   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
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
          & le(J,n)
          & ( le(s(I),J)
          <=> le(s(perm(J)),perm(I)) ) )
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
