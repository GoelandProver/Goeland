%------------------------------------------------------------------------------
% File     : COL130+1 : TPTP v8.1.2. Released v7.5.0.
% Domain   : Combinatory Logic
% Problem  : ProofGold problem CombUnif_591_pos_fof
% Version  : Especial.
% English  :

% Refs     : [Urb20] Urban (2020) Email to Geoff Sutcliffe
% Source   : [Urb20]
% Names    : CombUnif_591_pos_fof.p [Urb20]

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
      ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(X3,X7),X7),X4),X5),a(a(k,X1),X1)),a(s,a(X6,X2))),k),k),s) = a(a(a(X5,a(s,a(a(a(X2,k),X4),X1))),k),a(a(a(s,s),X3),X2))
     => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X3,X5),X4),X7),X5),a(a(a(a(s,k),X1),s),X4)),s),k) = a(a(a(X5,a(s,s)),a(X1,s)),s)
       => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X2,X6),X5),X7),X6),a(a(a(a(X5,s),X5),k),X1)),a(a(k,a(a(a(s,a(a(a(a(a(X4,k),X7),s),X1),k)),X5),X6)),a(X4,k))),k),k) = a(a(a(a(X4,a(a(k,a(s,a(a(a(X2,s),X0),k))),X7)),a(a(a(k,a(a(k,a(a(k,X3),s)),X5)),a(a(a(a(s,k),k),s),s)),X4)),a(X3,a(X5,k))),a(X0,X3))
         => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X2,X7),X4),X7),X7),a(X0,X6)),X0),a(s,a(a(a(s,X2),X6),X3))),a(X0,k)) = a(a(a(X7,a(X1,a(s,X1))),a(a(a(a(a(a(a(a(X2,a(k,X3)),a(a(s,s),X2)),X7),X0),k),X2),X0),s)),a(s,a(a(a(a(a(s,X1),X1),s),s),s)))
           => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X1,X6),X7),X5),X5),a(a(a(a(X6,a(a(a(a(a(s,a(a(a(a(k,k),X6),X3),X3)),a(s,k)),s),k),X2)),a(a(a(s,s),k),k)),a(a(s,X2),X7)),a(a(X7,X6),X3))),a(a(a(a(a(a(s,X2),X2),s),s),X7),s)),a(X0,a(X1,k))),a(s,a(a(s,k),k))) = a(k,a(a(a(X2,a(X4,a(a(a(X6,a(a(k,X7),s)),s),s))),a(k,a(a(a(s,X6),k),X3))),a(a(a(X5,s),k),k)))
             => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X1,X4),X6),X7),X5),a(a(s,a(k,k)),a(a(a(k,k),X1),k))),X5),s),k) = a(a(a(a(X4,a(a(s,s),a(a(k,X1),X5))),a(X7,a(a(s,X4),s))),X7),s)
               => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(X0,X6),X4),X4),X4),a(a(s,a(a(k,X3),a(a(a(s,X4),s),k))),X1)),k),s),a(a(s,a(X5,X5)),X4)),X0) = a(a(s,a(a(k,a(a(a(k,a(X4,a(a(a(X5,X2),s),s))),a(X3,k)),a(X5,X7))),a(s,a(X2,k)))),a(a(a(k,a(a(a(a(k,a(X2,a(a(a(a(X5,s),X2),X7),X5))),a(a(s,s),X5)),X1),s)),a(s,a(a(s,k),k))),X0))
                 => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X0,X4),X5),X4),X5),a(s,X1)),X3),a(X4,a(a(X2,k),X3))) = a(a(a(a(X5,a(X1,s)),k),s),a(a(a(a(s,a(s,X1)),s),X7),s))
                   => $false ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
