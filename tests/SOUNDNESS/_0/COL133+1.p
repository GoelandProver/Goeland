%------------------------------------------------------------------------------
% File     : COL133+1 : TPTP v8.1.2. Released v7.5.0.
% Domain   : Combinatory Logic
% Problem  : ProofGold problem CombUnif_738_pos_fof
% Version  : Especial.
% English  :

% Refs     : [Urb20] Urban (2020) Email to Geoff Sutcliffe
% Source   : [Urb20]
% Names    : CombUnif_738_pos_fof.p [Urb20]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0
% Syntax   : Number of formulae    :    3 (   2 unt;   0 def)
%            Number of atoms       :   11 (  10 equ)
%            Maximal formula atoms :    9 (   3 avg)
%            Number of connectives :    8 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   8  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   17 (   8 avg)
%            Maximal term depth    :   20 (   3 avg)
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
      ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X3,X4),X7),X6),X4),a(a(a(a(s,s),X2),X6),X1)),a(s,a(a(a(a(k,s),X2),k),k))),X1),s) = a(a(a(X6,a(X1,s)),s),s)
     => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(a(a(X3,X7),X4),X6),X5),a(a(a(a(a(a(a(s,X6),a(a(a(a(s,a(a(s,k),X1)),X3),s),X0)),a(X3,X0)),a(a(a(X1,k),X4),s)),X4),X0),s)),a(a(a(a(X5,a(a(X0,a(a(k,X6),s)),s)),s),X5),X4)),a(a(s,a(X6,k)),X1)),a(s,a(s,k))),a(a(a(s,X6),X3),X0)),X4),X0) = a(a(a(a(X5,a(k,a(X3,a(X1,k)))),s),a(X1,a(k,s))),a(X7,X0))
       => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X2,X6),X5),X5),X6),a(X1,X3)),a(s,a(k,a(a(s,X7),s)))),a(a(X1,X4),a(a(s,s),X7))) = a(a(a(X5,a(s,s)),s),X5)
         => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X2,X7),X6),X7),X5),a(X5,X6)),a(a(s,a(X1,X0)),a(a(a(X2,X7),X2),k))),X0) = a(k,a(a(X1,X5),s))
           => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X1,X7),X7),X6),X5),a(a(a(s,a(a(a(s,s),s),k)),a(a(a(s,s),X6),X6)),a(s,s))),a(a(s,k),X1)),a(X7,a(X6,X5))) = a(s,a(a(a(a(a(X1,a(X1,a(a(X3,X5),X2))),X7),a(a(a(X2,a(a(s,X2),s)),s),k)),s),a(a(a(a(a(k,X0),k),k),X5),X1)))
             => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(a(a(a(X1,X7),X6),X6),X5),a(s,a(X4,s))),k),a(a(a(a(k,a(s,k)),k),k),k)),X3),X2),s),X5) = a(a(a(X6,a(s,a(X0,a(s,X0)))),a(X0,a(a(k,a(a(a(a(a(a(k,s),k),X6),X1),X6),k)),X1))),k)
               => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(X0,X5),X6),X6),X7),a(X6,X1)),k),a(X0,a(a(a(X6,X2),s),k))) = a(s,a(a(s,a(a(a(a(a(X3,a(a(X4,a(a(k,X0),X3)),k)),a(a(a(k,X1),X5),X6)),a(s,s)),X4),X1)),a(s,a(k,s))))
                 => ( ! [X4,X5,X6,X7] : a(a(a(a(a(a(a(a(X0,X4),X6),X4),X4),a(X4,a(a(X5,X5),s))),X4),k),X6) = a(a(a(a(X4,a(s,a(a(k,a(a(a(s,X5),X5),X3)),X1))),s),a(s,X1)),a(a(k,a(a(X6,k),k)),X0))
                   => $false ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
