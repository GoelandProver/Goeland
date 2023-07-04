%--------------------------------------------------------------------------
% File     : NLP005+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : "The old dirty white Chevy" problem 5
% Version  : [Bos00] axioms.
% English  : A problem generated by the DORIS [Bos00] system when parsing
%            the statement "The old dirty white Chevy barrels down a lonely
%            street in Hollywood".

% Refs     : [Bos00] Bos (2000), DORIS: Discourse Oriented Representation an
%            [Bau99] Baumgartner (1999), FTP'2000 - Problem Sets
% Source   : [Bau99]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.10 v5.4.0, 0.00 v4.1.0, 0.20 v4.0.0, 0.25 v3.7.0, 0.00 v3.1.0, 0.67 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  118 (  12 equ)
%            Maximal formula atoms :  118 ( 118 avg)
%            Number of connectives :  121 (   4   ~;   0   |; 115   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   43 (  43 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   21 (  20 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   38 (   0   !;  38   ?)
% SPC      : FOF_CSA_EPR_SEQ

% Comments :
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ( ( ? [U,V,W,X,Y,Z,X1,X3,X4] :
          ( seat(U)
          & furniture(U)
          & front(U)
          & hollywood(V)
          & city(V)
          & event(W)
          & chevy(X)
          & car(X)
          & white(X)
          & dirty(X)
          & old(X)
          & street(Y)
          & way(Y)
          & lonely(Y)
          & barrel(W,X)
          & down(W,Y)
          & in(W,V)
          & Z != X1
          & fellow(Z)
          & man(Z)
          & young(Z)
          & fellow(X1)
          & man(X1)
          & young(X1)
          & Z = X3
          & in(X3,U)
          & X1 = X4
          & in(X4,U) )
     => ? [X5,X6,X7,X8,X9,X10,X11,X12,X14,X15] :
          ( seat(X5)
          & furniture(X5)
          & front(X5)
          & seat(X6)
          & furniture(X6)
          & front(X6)
          & hollywood(X7)
          & city(X7)
          & event(X8)
          & street(X9)
          & way(X9)
          & lonely(X9)
          & chevy(X10)
          & car(X10)
          & white(X10)
          & dirty(X10)
          & old(X10)
          & barrel(X8,X10)
          & down(X8,X9)
          & in(X8,X7)
          & X11 != X12
          & fellow(X11)
          & man(X11)
          & young(X11)
          & fellow(X12)
          & man(X12)
          & young(X12)
          & X11 = X14
          & in(X14,X5)
          & X12 = X15
          & in(X15,X6) ) )
    & ( ? [X16,X17,X18,X19,X20,X21,X22,X23,X25,X26] :
          ( seat(X16)
          & furniture(X16)
          & front(X16)
          & seat(X17)
          & furniture(X17)
          & front(X17)
          & hollywood(X18)
          & city(X18)
          & event(X19)
          & street(X20)
          & way(X20)
          & lonely(X20)
          & chevy(X21)
          & car(X21)
          & white(X21)
          & dirty(X21)
          & old(X21)
          & barrel(X19,X21)
          & down(X19,X20)
          & in(X19,X18)
          & X22 != X23
          & fellow(X22)
          & man(X22)
          & young(X22)
          & fellow(X23)
          & man(X23)
          & young(X23)
          & X22 = X25
          & in(X25,X16)
          & X23 = X26
          & in(X26,X17) )
     => ? [X27,X28,X29,X30,X31,X32,X33,X35,X36] :
          ( seat(X27)
          & furniture(X27)
          & front(X27)
          & hollywood(X28)
          & city(X28)
          & event(X29)
          & chevy(X30)
          & car(X30)
          & white(X30)
          & dirty(X30)
          & old(X30)
          & street(X31)
          & way(X31)
          & lonely(X31)
          & barrel(X29,X30)
          & down(X29,X31)
          & in(X29,X28)
          & X32 != X33
          & fellow(X32)
          & man(X32)
          & young(X32)
          & fellow(X33)
          & man(X33)
          & young(X33)
          & X32 = X35
          & in(X35,X27)
          & X33 = X36
          & in(X36,X27) ) ) ) ).

%--------------------------------------------------------------------------