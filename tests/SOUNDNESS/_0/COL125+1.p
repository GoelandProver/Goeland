%------------------------------------------------------------------------------
% File     : COL125+1 : TPTP v8.1.2. Released v7.5.0.
% Domain   : Combinatory Logic
% Problem  : ProofGold problem CombUnif_200_pos_th0
% Version  : Especial.
% English  :

% Refs     : [Urb20] Urban (2020) Email to Geoff Sutcliffe
% Source   : [Urb20]
% Names    : CombUnif_200_pos_fof.p [Urb20]

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
      ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X3,X4),X4),X5),X5),a(a(k,a(a(k,a(X5,X5)),X0)),a(a(a(s,X1),X5),X5))),a(k,X4)),k) = a(s,a(a(a(s,a(a(a(X2,X3),a(a(X6,s),s)),a(s,k))),a(a(X6,a(s,s)),X3)),s))
     => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X3,X5),X4),X6),X5),a(k,a(a(X7,X7),a(a(a(X0,X2),X5),X5)))),a(k,a(X1,X2))),a(a(X7,a(s,s)),k)) = a(k,a(a(s,a(a(a(X2,X4),X0),s)),a(a(k,a(X3,k)),k)))
       => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X2,X6),X5),X7),X7),a(a(s,a(a(a(a(s,k),k),k),X5)),a(X6,a(X5,k)))),X0),s) = a(k,a(a(a(a(a(X3,X5),X2),a(a(a(a(a(k,a(k,X0)),k),X4),k),k)),X1),a(X1,s)))
         => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X2,X5),X5),X4),X4),a(a(a(a(a(a(a(a(X2,X3),X1),s),k),s),X2),X6),k)),a(a(a(a(s,s),a(X3,X0)),k),s)),a(s,X5)),a(a(a(a(a(s,X7),k),X4),k),k)) = a(a(a(X7,a(a(a(s,X4),k),a(a(X1,X6),k))),a(X0,a(k,s))),a(a(a(a(a(k,a(a(a(a(a(X2,s),X7),X1),k),X0)),X4),s),s),k))
           => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(X1,X7),X4),X7),X7),a(a(a(a(k,a(a(a(a(k,s),a(s,X3)),s),X3)),s),a(k,k)),X7)),X3),X1),a(a(X4,X5),k)),a(a(X4,s),k)) = a(a(a(X5,a(a(s,a(X1,s)),X2)),a(a(X1,X7),s)),s)
             => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(X1,X6),X5),X6),X5),a(X0,a(a(X4,a(a(s,X6),X1)),a(s,X7)))),a(X1,X7)),a(X4,s)),a(a(X3,k),X5)),s) = a(k,a(a(a(a(a(s,s),s),s),s),a(k,s)))
               => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X0,X4),X4),X7),X6),a(a(X1,a(a(s,a(k,k)),a(X2,X2))),X0)),X4),X7) = a(k,a(a(k,a(X1,X5)),k))
                 => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X0,X5),X4),X4),X7),a(k,a(a(X4,X3),k))),a(a(a(a(s,X7),s),X1),X6)),s) = a(a(a(X5,a(a(a(s,s),X6),a(X6,X5))),a(X7,s)),a(X4,s))
                   => $false ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
