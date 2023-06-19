%------------------------------------------------------------------------------
% File     : COL129+1 : TPTP v8.1.2. Released v7.5.0.
% Domain   : Combinatory Logic
% Problem  : ProofGold problem CombUnif_500_pos_fof
% Version  : Especial.
% English  :

% Refs     : [Urb20] Urban (2020) Email to Geoff Sutcliffe
% Source   : [Urb20]
% Names    : CombUnif_500_pos_fof.p [Urb20]

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
      ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X3,X4),X4),X7),X7),a(a(a(X1,a(a(a(a(a(k,X7),a(X4,s)),X3),s),s)),a(s,a(a(a(a(s,X2),X3),X3),X1))),s)),a(a(a(k,a(a(a(s,a(X3,s)),s),k)),k),k)),X7) = a(a(a(X4,a(X2,a(a(X5,a(a(X4,k),s)),k))),X3),a(X7,a(a(X0,X0),k)))
     => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X3,X4),X4),X5),X5),a(X0,X3)),a(s,a(X1,a(X5,k)))),a(s,s)),s) = a(a(a(a(a(X4,a(a(a(a(a(X4,X2),a(X0,a(X3,k))),a(k,X4)),k),k)),k),s),a(X5,a(a(a(a(X6,X1),k),X0),X4))),a(X0,s))
       => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X2,X5),X4),X5),X6),a(k,X1)),a(a(s,a(k,a(a(a(a(X2,X0),k),X1),k))),a(a(a(k,k),k),X7))),k),X2) = a(a(s,a(a(a(X1,a(a(X3,a(a(X4,a(X7,X3)),X3)),s)),a(X6,s)),s)),a(a(s,k),a(a(a(X2,X2),X2),s)))
         => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X2,X6),X4),X7),X5),a(X7,s)),a(X7,X0)),a(a(a(a(a(a(X5,X6),k),k),X6),s),X5)),X4) = a(k,a(a(s,a(k,X0)),X3))
           => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(X1,X7),X5),X5),X6),a(a(a(X1,k),a(a(a(a(a(a(a(a(a(a(k,X0),s),X5),s),s),X1),k),X4),k),k)),a(k,X1))),a(s,X1)),a(k,X4)),X1),a(a(s,X5),X1)) = a(k,a(a(s,a(a(s,X7),k)),a(a(s,s),a(a(a(a(a(X0,s),s),s),s),s))))
             => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X1,X4),X5),X5),X4),a(k,X3)),a(X4,a(a(X3,a(a(a(X1,s),s),X1)),X7))),a(a(a(a(a(s,a(a(a(s,k),X3),s)),X2),s),X3),X7)) = a(a(a(a(X6,a(a(s,s),s)),a(s,a(a(a(X7,a(a(a(a(X0,X4),k),k),k)),s),s))),a(a(X6,a(X0,X2)),a(k,k))),k)
               => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(X0,X5),X4),X7),X5),a(a(X1,a(a(s,s),X4)),X2)),X2),a(a(a(k,s),X2),s)),a(s,a(X0,s))),s) = a(k,a(a(k,k),a(a(a(a(a(k,k),X1),s),X1),k)))
                 => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X0,X7),X4),X4),X6),a(a(a(s,k),a(s,a(a(a(a(a(a(X4,X2),X7),s),X4),X7),k))),k)),a(a(k,X6),s)),s) = a(a(a(X4,a(s,s)),a(a(s,k),k)),s)
                   => $false ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
