%------------------------------------------------------------------------------
% File     : COL132+1 : TPTP v8.1.2. Released v7.5.0.
% Domain   : Combinatory Logic
% Problem  : ProofGold problem CombUnif_691_pos_fof
% Version  : Especial.
% English  :

% Refs     : [Urb20] Urban (2020) Email to Geoff Sutcliffe
% Source   : [Urb20]
% Names    : CombUnif_691_pos_fof.p [Urb20]

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
      ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X3,X6),X7),X7),X5),a(s,s)),k),s) = a(a(a(a(X5,a(k,s)),a(k,X3)),a(a(a(a(a(a(X2,s),a(a(X7,X3),X5)),k),X7),X5),s)),X5)
     => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X3,X6),X7),X6),X7),a(s,a(a(a(X7,a(a(a(X1,k),k),X1)),a(a(a(a(X3,X1),X0),X1),k)),k))),s),a(a(s,s),a(a(a(X1,k),X4),s))),k) = a(s,a(a(a(a(X5,a(X2,a(a(a(a(a(a(X7,k),X2),k),s),s),s))),a(a(a(a(k,a(X4,k)),s),s),X7)),s),a(a(X6,X6),X4)))
       => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X2,X6),X4),X6),X7),a(k,a(a(X0,a(X2,s)),s))),a(a(X0,a(X2,a(s,X5))),a(X6,X1))),k),a(a(a(k,X3),X6),s)) = a(s,a(a(a(a(X0,a(k,k)),k),a(a(s,a(X0,X4)),X2)),X7))
         => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X2,X4),X7),X4),X6),a(a(a(a(a(X2,s),s),X5),k),X7)),X4),a(a(s,a(k,X2)),a(a(a(k,X0),s),X4))) = a(a(s,a(a(a(a(k,X7),a(X2,a(s,s))),a(a(a(k,a(a(a(a(a(a(X5,X1),k),k),s),X2),X3)),k),X5)),X5)),a(a(X3,a(k,X1)),X1))
           => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X1,X4),X4),X6),X6),a(X4,s)),a(X2,a(a(a(k,a(a(s,X1),X2)),s),X3))),a(a(X4,a(a(a(X7,X3),X7),s)),a(s,X3))) = a(a(a(a(a(a(X6,a(X3,s)),X0),a(k,s)),k),X0),s)
             => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X1,X6),X6),X4),X5),a(a(a(X4,X0),s),a(k,X7))),a(k,k)),X7) = a(a(s,a(a(a(X4,a(s,a(a(X5,a(a(s,k),s)),k))),k),X3)),a(a(s,a(a(a(s,X3),a(a(a(k,X2),X5),s)),X3)),a(a(a(a(X3,a(s,s)),a(a(X5,X1),X0)),k),X6)))
               => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X0,X5),X6),X7),X4),a(X5,s)),k),a(X1,a(a(a(a(X3,X2),X0),k),X4))),X7) = a(s,a(a(X0,a(a(X6,X1),a(X7,s))),a(a(a(X6,a(a(X0,X5),s)),a(s,k)),k)))
                 => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X0,X5),X4),X5),X7),a(a(s,a(k,k)),k)),X3),a(k,a(X1,X2))),X0) = a(a(s,a(a(a(a(s,a(k,s)),a(a(a(k,s),s),k)),X4),s)),a(a(X2,a(a(k,s),a(a(a(k,s),k),X0))),a(a(a(a(a(a(a(a(s,s),a(s,k)),X5),X6),X0),s),X2),X5)))
                   => $false ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
