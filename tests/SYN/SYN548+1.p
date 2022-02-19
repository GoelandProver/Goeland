

%--------------------------------------------------------------------------
% File     : SYN548+1 : TPTP v7.4.0. Released v2.2.0.
% Domain   : Syntactic (Translated)
% Problem  : dia box (box (p or box q)<=>box p or box q)
% Version  : Especial.
% English  :

% Refs     : [Wei94] Weidenbach (1994), Email to G. Sutcliffe
%          : [Che80] Chellas (1980), Modal Logic
% Source   : [Wei94]
% Names    :

% Status   : Theorem
% Rating   : 0.24 v7.4.0, 0.06 v7.3.0, 0.00 v7.0.0, 0.07 v6.4.0, 0.14 v6.3.0, 0.23 v6.2.0, 0.27 v6.1.0, 0.36 v6.0.0, 0.00 v5.5.0, 0.54 v5.4.0, 0.52 v5.2.0, 0.43 v5.0.0, 0.50 v4.1.0, 0.56 v4.0.1, 0.47 v4.0.0, 0.45 v3.7.0, 0.33 v3.5.0, 0.25 v3.4.0, 0.50 v3.3.0, 0.44 v3.2.0, 0.89 v3.1.0, 0.50 v2.7.0, 0.67 v2.6.0, 0.33 v2.5.0, 0.67 v2.4.0, 0.33 v2.2.1
% Syntax   : Number of formulae    :    3 (   1 unit)
%            Number of atoms       :   14 (   0 equality)
%            Maximal formula depth :   11 (   6 average)
%            Number of connectives :   11 (   0 ~  ;   2  |;   2  &)
%                                         (   1 <=>;   6 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 1-2 arity)
%            Number of functors    :    1 (   1 constant; 0-0 arity)
%            Number of variables   :   10 (   0 singleton;   9 !;   1 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments : These are modal logic problems translated to FOF. The problems
%            can be easily solved by theorem proving methods for modal logic,
%            but their (naive) translation into first-order logic results in
%            hard first-order problems. The first-order translation of the
%            box, diamond operators is:
%                [box P]x  :=  (all y R(x,y) -> [P]y)
%                [dia P]x  :=  (exists R(x,y) & [P]y)
%                [P]x  :=  P(x)  if P is an atom
%            where we start with some initial context 'o' (the initial world),
%            i.e. we translate a formula P into [P]o. [Wei94]
%--------------------------------------------------------------------------
fof(reflexivity_of_reachable,axiom,
    ( ! [X] : reachable(X,X) )).

fof(transitivity_of_reachable,axiom,
    ( ! [X,Y,Z] :
        ( ( reachable(X,Y)
          & reachable(Y,Z) )
       => reachable(X,Z) ) )).

%---- (exists x (R(o,x) & (all y (R(x,y) -> ((all z (R(y,z) -> (P(z) |
%---- (all v (R(z,v) -> Q(v))))))
%---- <-> ((all w (R(y,w) -> P(w))) | (all w (R(y,w) -> Q(w))))))))).
fof(prove_this,conjecture,
    ( ? [X] :
        ( reachable(initial_world,X)
        & ! [Y] :
            ( reachable(X,Y)
           => ( ! [Z] :
                  ( reachable(Y,Z)
                 => ( p(Z)
                    | ! [V] :
                        ( reachable(Z,V)
                       => q(V) ) ) )
            <=> ( ! [W] :
                    ( reachable(Y,W)
                   => p(W) )
                | ! [W] :
                    ( reachable(Y,W)
                   => q(W) ) ) ) ) ) )).

%--------------------------------------------------------------------------

