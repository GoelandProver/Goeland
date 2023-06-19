%------------------------------------------------------------------------------
% File     : GRP762+1 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Group Theory
% Problem  : Linearly ordered group
% Version  : Especial.
% English  :

% Refs     : [Sta08] Stanovsky (2008), Email to Geoff Sutcliffe
% Source   : [Sta08]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v4.0.0
% Syntax   : Number of formulae    :   10 (   6 unt;   0 def)
%            Number of atoms       :   17 (   6 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :   10 (   3   ~;   1   |;   3   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    4 (   4 usr;   2 con; 0-2 aty)
%            Number of variables   :   19 (  19   !;   0   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(f01,axiom,
    ! [A] : mult(A,i(A)) = e ).

fof(f02,axiom,
    ! [A] : mult(A,e) = A ).

fof(f03,axiom,
    ! [A,B,C] : mult(A,mult(B,C)) = mult(mult(A,B),C) ).

fof(f04,axiom,
    ! [A,B] : mult(A,B) = mult(B,A) ).

fof(f05,axiom,
    ! [A] : o(A,A) ).

fof(f06,axiom,
    ! [A,B] :
      ( ( A != B
        & o(A,B) )
     => ~ o(B,A) ) ).

fof(f07,axiom,
    ! [A,B,C] :
      ( ( o(A,B)
        & o(B,C) )
     => o(A,C) ) ).

fof(f08,axiom,
    ! [A,B,C,D] :
      ( ( o(A,B)
        & o(C,D) )
     => o(mult(A,C),mult(B,D)) ) ).

fof(f09,axiom,
    ! [A,B] :
      ( o(A,B)
      | o(B,A) ) ).

fof(f10,axiom,
    a != e ).

%------------------------------------------------------------------------------
