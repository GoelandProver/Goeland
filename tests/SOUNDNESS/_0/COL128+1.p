%------------------------------------------------------------------------------
% File     : COL128+1 : TPTP v8.1.2. Released v7.5.0.
% Domain   : Combinatory Logic
% Problem  : ProofGold problem CombUnif_488_pos_fof
% Version  : Especial.
% English  :

% Refs     : [Urb20] Urban (2020) Email to Geoff Sutcliffe
% Source   : [Urb20]
% Names    : CombUnif_488_pos_fof.p [Urb20]

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
      ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X3,X4),X6),X5),X7),a(a(s,a(s,X3)),k)),a(a(a(k,a(a(X5,X4),k)),a(a(k,X0),X0)),X5)),X5) = a(k,a(a(a(k,s),k),a(s,s)))
     => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(X3,X5),X4),X6),X7),a(a(a(a(a(a(X4,k),X5),X2),a(X6,X2)),X6),k)),a(X7,a(a(X4,s),k))),X3),X2),a(a(a(a(X0,s),X5),s),s)) = a(a(a(X6,a(a(a(X7,a(a(a(k,a(X1,X7)),k),s)),a(a(X1,a(a(a(s,s),X3),X7)),s)),a(s,X3))),a(k,X1)),a(a(X3,X1),k))
       => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X2,X7),X6),X7),X4),a(a(X3,X3),a(a(a(a(a(a(X1,s),s),k),s),X5),s))),s),X6) = a(k,a(a(a(k,X1),s),k))
         => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X2,X7),X7),X4),X6),a(X0,k)),k),a(s,a(a(X6,X7),s))),X6) = a(a(s,a(a(a(a(s,a(X1,s)),X7),X1),X3)),a(a(X0,s),X1))
           => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X1,X5),X5),X6),X4),a(a(a(X1,k),a(k,a(s,X5))),a(k,X7))),X1),X0) = a(k,a(a(X1,a(a(k,a(X2,a(X4,s))),X2)),X3))
             => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X1,X7),X6),X7),X7),a(k,a(a(X3,s),k))),a(X3,a(X5,a(X3,s)))),a(a(X3,s),s)) = a(s,a(a(a(a(k,X2),k),X0),a(a(X7,k),k)))
               => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(a(X0,X5),X7),X5),X6),a(s,X6)),a(a(a(a(s,a(s,a(a(a(X1,s),X5),k))),X7),s),X3)),a(a(X5,s),X0)),X4),a(X0,k)),a(a(s,k),k)) = a(a(a(a(X5,a(X2,a(k,k))),X2),s),k)
                 => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X0,X7),X6),X4),X7),a(s,X1)),s),a(X1,a(s,X7))) = a(a(a(X6,a(a(a(s,k),X2),a(k,X3))),s),X6)
                   => $false ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
