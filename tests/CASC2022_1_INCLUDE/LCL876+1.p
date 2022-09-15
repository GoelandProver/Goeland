%--------------------------------------------------------------------------
% File     : LCL876+1 : TPTP v8.1.0. Released v5.2.0.
% Domain   : Logic Calculi (Many valued sentential)
% Problem  : Prove Mv5 from MV1--MV4
% Version  : Especial.
% English  :

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : Theorem
% Rating   : 0.93 v7.5.0, 0.95 v7.4.0, 0.94 v7.3.0, 0.86 v7.2.0, 0.83 v7.1.0, 0.75 v7.0.0, 0.93 v6.3.0, 0.92 v6.2.0, 0.91 v6.1.0, 1.00 v5.2.0
% Syntax   : Number of formulae    :    6 (   5 unt;   0 def)
%            Number of atoms       :    8 (   0 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :    2 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   4 avg)
%            Maximal term depth    :    4 (   2 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    2 (   2 usr;   0 con; 1-2 aty)
%            Number of variables   :   13 (  13   !;   0   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(cd,axiom,
    ! [Y,X] :
      ( ( is_a_theorem(implies(X,Y))
        & is_a_theorem(X) )
     => is_a_theorem(Y) ) ).

fof(mv1,axiom,
    ! [Y,X] : is_a_theorem(implies(X,implies(Y,X))) ).

fof(mv2,axiom,
    ! [Z,Y,X] : is_a_theorem(implies(implies(X,Y),implies(implies(Y,Z),implies(X,Z)))) ).

fof(mv3,axiom,
    ! [Y,X] : is_a_theorem(implies(implies(implies(X,Y),Y),implies(implies(Y,X),X))) ).

fof(mv4,axiom,
    ! [Y,X] : is_a_theorem(implies(implies(not(X),not(Y)),implies(Y,X))) ).

fof(mv5,conjecture,
    ! [Y,X] : is_a_theorem(implies(implies(implies(X,Y),implies(Y,X)),implies(Y,X))) ).

%--------------------------------------------------------------------------
