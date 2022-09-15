%--------------------------------------------------------------------------
% File     : BOO109+1 : TPTP v8.1.0. Released v3.5.0.
% Domain   : Boolean Algebra
% Problem  : Josef Urban's problem using the Wajsberg axiom
% Version  : Especial.
% English  :

% Refs     : [Wol02] Wolfram (2002), A New Kind of Science
%          : [Urb08] Urban (2008), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    :

% Status   : Theorem
% Rating   : 0.73 v8.1.0, 0.71 v7.5.0, 0.81 v7.4.0, 0.75 v7.3.0, 0.57 v7.2.0, 0.67 v7.1.0, 0.50 v7.0.0, 0.79 v6.4.0, 0.86 v6.3.0, 0.85 v6.2.0, 0.73 v6.1.0, 0.88 v6.0.0, 0.75 v5.5.0, 0.88 v5.4.0, 0.91 v5.2.0, 0.86 v5.0.0, 0.90 v4.1.0, 0.94 v4.0.1, 0.95 v3.7.0, 0.86 v3.5.0
% Syntax   : Number of formulae    :    3 (   2 unt;   0 def)
%            Number of atoms       :    5 (   0 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :    2 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   5 avg)
%            Maximal term depth    :    6 (   2 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 2-2 aty)
%            Number of variables   :    9 (   9   !;   0   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(wajsbergs_axiom,axiom,
    ! [A,B,C,D] : p(nand(nand(A,nand(B,C)),nand(nand(nand(D,C),nand(nand(A,D),nand(A,D))),nand(A,nand(A,B))))) ).

fof(modus_ponens_for_nand,axiom,
    ! [P,Q,R] :
      ( ( p(nand(P,nand(Q,R)))
        & p(P) )
     => p(R) ) ).

fof(tautology,conjecture,
    ! [A,B] : p(nand(nand(A,nand(B,B)),nand(nand(nand(B,B),nand(nand(A,A),nand(A,A))),nand(nand(B,B),nand(nand(A,A),nand(A,A)))))) ).

%--------------------------------------------------------------------------
