%------------------------------------------------------------------------------
% File     : REL052+1 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Relation Algebra
% Problem  : Non-discrete dense ordering
% Version  : Especial.
% English  :

% Refs     : [Sta08] Stanovsky (2008), Email to Geoff Sutcliffe
% Source   : [Sta08]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v4.0.0
% Syntax   : Number of formulae    :    6 (   1 unt;   0 def)
%            Number of atoms       :   15 (   5 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   15 (   6   ~;   0   |;   6   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 2-2 aty)
%            Number of variables   :   12 (  10   !;   2   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : There is no finite model, but (Q,<=) is an infinite model.
%------------------------------------------------------------------------------
fof(f01,axiom,
    ! [A] : o(A,A) ).

fof(f02,axiom,
    ! [A,B] :
      ( ( A != B
        & o(A,B) )
     => ~ o(B,A) ) ).

fof(f03,axiom,
    ! [A,B,C] :
      ( ( o(A,B)
        & o(B,C) )
     => o(A,C) ) ).

fof(f04,axiom,
    ! [A,B] :
      ( ( A != B
        & o(A,B) )
     => ( o(A,f(A,B))
        & o(f(A,B),B) ) ) ).

fof(f05,axiom,
    ! [A,B] :
      ( f(A,B) != A
      & f(A,B) != B ) ).

fof(f06,axiom,
    ? [A,B] :
      ( o(A,B)
      & A != B ) ).

%------------------------------------------------------------------------------
