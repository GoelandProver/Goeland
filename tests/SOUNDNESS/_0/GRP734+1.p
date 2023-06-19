%------------------------------------------------------------------------------
% File     : GRP734+1 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Group Theory (Quasigroups)
% Problem  : Non-commutative pure DTS loop.
% Version  : Especial.
% English  :

% Refs     : [Sta08] Stanovsky (2008), Email to G. Sutcliffe
% Source   : [Sta08]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v4.0.0
% Syntax   : Number of formulae    :   10 (   8 unt;   0 def)
%            Number of atoms       :   19 (  19 equ)
%            Maximal formula atoms :    7 (   1 avg)
%            Number of connectives :   10 (   1   ~;   4   |;   3   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   3 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    6 (   6 usr;   3 con; 0-2 aty)
%            Number of variables   :   16 (  16   !;   0   ?)
% SPC      : FOF_SAT_RFO_PEQ

% Comments : Size 14
%------------------------------------------------------------------------------
fof(c01,axiom,
    ! [B,A] : mult(A,ld(A,B)) = B ).

fof(c02,axiom,
    ! [B,A] : ld(A,mult(A,B)) = B ).

fof(c03,axiom,
    ! [B,A] : mult(rd(A,B),B) = A ).

fof(c04,axiom,
    ! [B,A] : rd(mult(A,B),B) = A ).

fof(c05,axiom,
    ! [A] : mult(A,unit) = A ).

fof(c06,axiom,
    ! [A] : mult(unit,A) = A ).

fof(c07,axiom,
    ! [A] : mult(A,A) = unit ).

fof(c08,axiom,
    mult(op_a,op_b) != mult(op_b,op_a) ).

fof(c09,axiom,
    ! [X0,X1,X2] :
      ( mult(X0,X1) = X2
     => ( ( mult(X0,X2) = X1
          & mult(X1,X2) = X0 )
        | ( mult(X0,X2) = X1
          & mult(X2,X1) = X0 )
        | ( mult(X2,X0) = X1
          & mult(X2,X1) = X0 ) ) ) ).

fof(c10,axiom,
    ! [X3,X4] :
      ( mult(X3,X4) = mult(X4,X3)
     => ( X3 = unit
        | X4 = unit
        | mult(X3,X4) = unit ) ) ).

%------------------------------------------------------------------------------
