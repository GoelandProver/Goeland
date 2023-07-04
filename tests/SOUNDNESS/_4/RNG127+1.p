%------------------------------------------------------------------------------
% File     : RNG127+1 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Ring Theory
% Problem  : Proper integral domains
% Version  : Especial.
% English  :

% Refs     : [Sta09] Stanovsky (208), Email to Geoff Sutcliffe
% Source   : [Sta09]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v4.0.0
% Syntax   : Number of formulae    :   10 (   8 unt;   0 def)
%            Number of atoms       :   13 (  13 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :    5 (   2   ~;   1   |;   1   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   3 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    5 (   5 usr;   2 con; 0-2 aty)
%            Number of variables   :   20 (  19   !;   1   ?)
% SPC      : FOF_SAT_RFO_PEQ

% Comments : Finitely unsatisfiable: this is the well known fact that finite
%            integral domains are fields
%------------------------------------------------------------------------------
fof(f01,axiom,
    ! [A] : add(A,m(A)) = n ).

fof(f02,axiom,
    ! [A] : add(A,n) = A ).

fof(f03,axiom,
    ! [A,B,C] : add(A,add(B,C)) = add(add(A,B),C) ).

fof(f04,axiom,
    ! [A,B] : add(A,B) = add(B,A) ).

fof(f05,axiom,
    ! [A] : mult(A,e) = A ).

fof(f06,axiom,
    ! [A,B,C] : mult(A,mult(B,C)) = mult(mult(A,B),C) ).

fof(f07,axiom,
    ! [A,B] : mult(A,B) = mult(B,A) ).

fof(f08,axiom,
    ! [A,B,C] : mult(A,add(B,C)) = add(mult(A,B),mult(A,C)) ).

fof(f09,axiom,
    ! [A,B] :
      ( mult(A,B) = n
     => ( A = n
        | B = n ) ) ).

fof(f10,axiom,
    ? [A] :
    ! [B] :
      ( A != n
      & mult(A,B) != e ) ).

%------------------------------------------------------------------------------
