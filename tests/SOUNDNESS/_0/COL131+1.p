%------------------------------------------------------------------------------
% File     : COL131+1 : TPTP v8.1.2. Released v7.5.0.
% Domain   : Combinatory Logic
% Problem  : ProofGold problem CombUnif_642_pos_fof
% Version  : Especial.
% English  :

% Refs     : [Urb20] Urban (2020) Email to Geoff Sutcliffe
% Source   : [Urb20]
% Names    : CombUnif_642_pos_fof.p [Urb20]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0
% Syntax   : Number of formulae    :    3 (   2 unt;   0 def)
%            Number of atoms       :   11 (  10 equ)
%            Maximal formula atoms :    9 (   3 avg)
%            Number of connectives :    8 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   8  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   17 (   8 avg)
%            Maximal term depth    :   14 (   3 avg)
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
      ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X3,X6),X6),X6),X7),a(a(a(a(a(k,a(X0,a(X4,X2))),a(X5,a(k,X1))),a(s,s)),a(a(k,X5),k)),s)),a(a(k,X4),a(a(a(a(s,X5),s),X6),k))),s) = a(s,a(a(s,X3),a(X4,X1)))
     => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X3,X4),X5),X4),X4),a(a(s,X0),X1)),a(k,X6)),a(a(a(a(a(a(X6,s),k),X1),X4),k),s)) = a(s,a(a(X5,a(s,a(s,X4))),k))
       => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X2,X5),X4),X7),X6),a(a(s,a(a(a(a(a(a(a(X4,a(X5,s)),a(X5,s)),X5),X2),X2),X1),k)),X2)),s),X1) = a(k,a(a(s,k),k))
         => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(a(X2,X7),X6),X6),X6),a(a(a(a(s,a(s,X1)),a(X0,a(a(X5,s),s))),s),X3)),X6),a(a(s,a(s,X1)),a(s,s))),a(a(s,a(X4,k)),X6)),a(a(a(a(a(s,k),s),k),s),X7)),a(a(a(X6,X0),k),k)) = a(s,a(a(s,a(a(X3,a(a(k,a(k,X7)),X6)),a(a(a(a(a(a(a(a(a(X7,X3),X1),X2),X1),k),k),X5),X0),X0))),a(a(k,a(a(a(a(a(X6,X2),X1),X5),X6),X7)),s)))
           => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X1,X4),X4),X5),X4),a(X1,a(k,k))),a(a(a(X6,X6),a(X0,s)),a(k,X1))),a(X1,k)),s) = a(k,a(a(X3,X3),X0))
             => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X1,X5),X6),X5),X5),a(X2,a(X0,s))),X7),k) = a(a(a(X7,a(X6,a(a(a(a(s,k),k),s),X6))),a(k,k)),a(a(a(s,k),s),s))
               => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X0,X6),X6),X6),X6),a(a(a(k,X4),a(a(X7,a(a(X5,X7),X4)),X3)),k)),a(a(a(k,k),s),a(a(k,s),X7))),a(a(a(s,s),a(a(X4,X1),k)),k)) = a(a(a(a(X5,a(a(a(a(k,a(X0,X5)),a(X6,k)),a(X3,X0)),k)),a(X4,a(a(a(a(a(a(s,k),X5),s),X0),s),k))),a(s,X6)),s)
                 => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X0,X7),X6),X5),X6),a(X5,a(s,a(a(a(a(a(a(k,X0),X4),s),k),s),k)))),X2),k) = a(a(a(X7,a(a(k,s),a(a(X6,a(a(a(s,X0),s),s)),X1))),a(a(a(k,X3),a(a(a(X1,X6),k),X0)),a(a(s,s),X3))),X3)
                   => $false ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
