%------------------------------------------------------------------------------
% File     : COL135+1 : TPTP v8.1.2. Released v7.5.0.
% Domain   : Combinatory Logic
% Problem  : ProofGold problem CombUnif_1058_pos_fof
% Version  : Especial.
% English  :

% Refs     : [Urb20] Urban (2020) Email to Geoff Sutcliffe
% Source   : [Urb20]
% Names    : CombUnif_1058_pos_fof.p [Urb20]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0
% Syntax   : Number of formulae    :    3 (   2 unt;   0 def)
%            Number of atoms       :   11 (  10 equ)
%            Maximal formula atoms :    9 (   3 avg)
%            Number of connectives :    8 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   8  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   17 (   8 avg)
%            Maximal term depth    :   18 (   3 avg)
%            Number of predicates  :    2 (   0 usr;   1 prp; 0-2 aty)
%            Number of functors    :    3 (   3 usr;   2 con; 0-2 aty)
%            Number of variables   :   41 (  41   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : See https://proofgold.org
%------------------------------------------------------------------------------
fof(keq,axiom,
    ! [X,Y] : a(a(k,X),Y) = X ).

fof(seq,axiom,
    ! [X,Y,Z] : a(a(a(s,X),Y),Z) = a(a(X,Z),a(Y,Z)) ).

fof(conj,conjecture,
    ! [X0,X1,X2,X3] :
      ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X3,X4),X5),X5),X5),a(a(X0,a(a(X3,a(s,s)),X4)),a(X0,X7))),a(a(s,a(a(X2,X3),X6)),a(a(X4,X3),X0))),a(k,X4)),a(X2,X0)) = a(a(a(X6,a(a(X5,a(a(X4,X2),k)),a(X7,k))),a(s,X4)),X7)
     => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X3,X5),X5),X7),X5),a(a(k,X3),a(a(X7,X7),X3))),a(a(s,X5),X7)),a(a(a(a(X2,s),a(a(a(a(a(X6,k),s),X0),X5),X5)),k),s)) = a(s,a(a(s,X3),X6))
       => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X2,X5),X6),X5),X7),a(a(a(s,a(a(X2,a(a(X6,X6),X4)),s)),a(a(a(a(a(k,X2),X1),X2),s),X6)),a(a(a(a(a(a(k,X4),X4),X3),s),k),k))),k),a(k,X0)) = a(a(a(a(a(X4,a(a(a(s,k),k),a(a(s,X2),s))),X0),a(k,s)),X2),a(a(X5,k),k))
         => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(a(a(X2,X7),X4),X7),X7),a(X1,a(X4,a(a(s,X7),X3)))),a(a(a(a(X4,a(a(a(a(X7,a(a(a(k,X3),k),k)),k),k),k)),s),X0),s)),a(a(a(a(a(k,k),a(s,X6)),k),s),s)),k),a(s,s)),s),s) = a(k,a(a(a(X2,a(a(a(X5,a(k,a(k,X3))),s),a(a(X4,X3),s))),X5),a(X6,X7)))
           => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X1,X5),X6),X5),X6),a(a(a(X7,a(a(X6,a(k,s)),a(a(a(k,k),X3),X5))),a(a(a(s,a(a(a(a(a(s,X4),X3),X1),X6),k)),X7),X1)),X7)),X3),a(a(X0,X3),X0)),X0) = a(s,a(a(a(s,k),a(a(a(a(s,s),X0),X7),k)),a(a(a(a(s,a(k,s)),k),X1),X5)))
             => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(X1,X5),X4),X6),X7),a(a(a(k,k),k),s)),s),a(s,a(s,s))),X5),a(a(a(a(a(k,k),X0),k),X0),X1)) = a(k,a(a(a(a(a(X1,a(a(a(k,X6),X4),s)),a(X1,X5)),k),s),X1))
               => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X0,X5),X6),X7),X4),a(a(X0,a(a(a(a(s,s),X4),X4),s)),a(a(a(k,X5),X1),s))),a(k,a(a(a(a(a(X3,X0),s),X4),k),k))),a(X2,a(a(X2,X5),k))) = a(a(a(X4,a(X1,a(a(a(X6,k),a(k,X0)),X3))),a(a(X3,s),k)),a(X3,a(a(s,k),X1)))
                 => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X0,X5),X4),X4),X5),a(a(X0,X3),a(a(k,a(X3,k)),X2))),a(a(a(X1,a(a(a(a(a(X1,a(k,s)),k),X7),X4),X4)),a(s,X3)),k)),a(s,X6)),s) = a(a(a(X6,a(a(s,a(s,a(a(k,s),k))),X3)),a(a(k,a(a(a(a(k,a(X7,X3)),s),s),k)),X2)),a(X6,a(a(s,k),X5)))
                   => $false ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
