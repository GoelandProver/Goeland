%------------------------------------------------------------------------------
% File     : COL127+1 : TPTP v8.1.2. Released v7.5.0.
% Domain   : Combinatory Logic
% Problem  : ProofGold problem CombUnif_319_pos_fof
% Version  : Especial.
% English  :

% Refs     : [Urb20] Urban (2020) Email to Geoff Sutcliffe
% Source   : [Urb20]
% Names    : CombUnif_319_pos_fof.p [Urb20]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0
% Syntax   : Number of formulae    :    3 (   2 unt;   0 def)
%            Number of atoms       :   11 (  10 equ)
%            Maximal formula atoms :    9 (   3 avg)
%            Number of connectives :    8 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   8  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   17 (   8 avg)
%            Maximal term depth    :   13 (   3 avg)
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
      ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(X3,X7),X5),X4),X4),a(s,a(s,X1))),k),a(k,a(X4,X7))),X0),a(a(s,k),X0)) = a(a(a(X7,a(X2,a(a(a(a(s,X6),s),s),X3))),X4),a(a(k,a(X7,k)),a(a(k,k),s)))
     => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X3,X4),X6),X4),X7),a(X5,s)),a(a(k,a(s,k)),a(a(X1,X4),k))),X7) = a(a(a(a(a(a(X5,a(a(a(s,a(a(X3,s),a(a(k,X5),X2))),a(s,k)),a(a(X6,X0),k))),X0),k),a(a(a(X6,k),X4),X3)),a(a(a(X4,k),X7),s)),a(s,s))
       => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X2,X6),X5),X4),X7),a(a(a(a(k,a(a(a(k,k),k),s)),s),a(X1,X2)),s)),a(a(a(a(k,X4),s),X7),X3)),X5),s) = a(a(a(X7,a(X0,s)),a(k,a(a(a(a(k,X7),X1),k),k))),k)
         => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(X2,X5),X6),X4),X4),a(X3,X7)),a(X7,a(X3,a(a(a(X6,s),X2),k)))),a(X5,a(a(a(a(a(a(X2,X7),s),X6),X6),s),X7))),a(a(a(a(k,a(k,s)),X2),s),k)),a(a(a(a(X2,X3),s),k),s)) = a(a(a(X6,a(X0,a(X3,s))),a(a(a(X6,X7),a(a(s,s),s)),a(X6,X4))),a(a(s,a(k,X6)),a(X4,s)))
           => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X1,X6),X7),X6),X4),a(a(a(a(a(s,a(a(a(k,a(k,s)),X1),X6)),a(a(k,X4),X5)),X1),a(a(a(X4,X1),X3),s)),k)),a(s,s)),s) = a(k,a(a(a(a(a(s,a(a(X0,X6),k)),a(a(X6,a(a(X3,k),s)),s)),a(a(X7,a(X6,X1)),k)),a(a(a(a(s,k),X0),X2),k)),s))
             => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X1,X6),X4),X5),X5),a(k,a(a(a(X2,k),X0),s))),X3),X3) = a(k,a(a(a(a(a(X4,a(X7,a(a(a(a(X5,a(X2,X2)),k),X2),X6))),s),s),a(s,k)),a(a(s,X5),X4)))
               => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X0,X5),X6),X7),X4),a(X3,s)),X1),X4),X6) = a(k,a(a(a(X6,X0),s),a(X0,a(s,X3))))
                 => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(a(a(X0,X6),X6),X7),X7),a(k,X1)),a(s,s)),a(X2,s)),s),X5),k),X4) = a(k,a(a(X2,k),X7))
                   => $false ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
