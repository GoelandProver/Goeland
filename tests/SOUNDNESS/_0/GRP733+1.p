%------------------------------------------------------------------------------
% File     : GRP733+1 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Group Theory (Quasigroups)
% Problem  : Non-flexible non-commutative DTS loop.
% Version  : Especial.
% English  :

% Refs     : [Sta08] Stanovsky (2008), Email to G. Sutcliffe
% Source   : [Sta08]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v7.3.0, 0.67 v7.1.0, 0.00 v4.0.1, 0.50 v4.0.0
% Syntax   : Number of formulae    :   10 (   9 unt;   0 def)
%            Number of atoms       :   16 (  16 equ)
%            Maximal formula atoms :    7 (   1 avg)
%            Number of connectives :    8 (   2   ~;   2   |;   3   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   3 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    8 (   8 usr;   5 con; 0-2 aty)
%            Number of variables   :   14 (  14   !;   0   ?)
% SPC      : FOF_SAT_RFO_PEQ

% Comments : Size 10
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
    mult(c,d) != mult(d,c) ).

fof(c09,axiom,
    mult(mult(a,b),a) != mult(a,mult(b,a)) ).

fof(c10,axiom,
    ! [X0,X1,X2] :
      ( mult(X0,X1) = X2
     => ( ( mult(X0,X2) = X1
          & mult(X1,X2) = X0 )
        | ( mult(X0,X2) = X1
          & mult(X2,X1) = X0 )
        | ( mult(X2,X0) = X1
          & mult(X2,X1) = X0 ) ) ) ).

%------------------------------------------------------------------------------
