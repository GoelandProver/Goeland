%------------------------------------------------------------------------------
% File     : KLE172+1 : TPTP v8.1.2. Released v5.5.0.
% Domain   : Kleene Algebra
% Problem  : Ben's problem 2
% Version  : [Hoe08] axioms.
% English  : 

% Refs     : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0, 0.33 v7.0.0, 0.00 v6.4.0, 0.33 v6.2.0, 0.45 v6.0.0, 0.69 v5.5.0
% Syntax   : Number of formulae    :   18 (  15 unt;   0 def)
%            Number of atoms       :   21 (  13 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    3 (   0   ~;   0   |;   0   &)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   3 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    8 (   8 usr;   5 con; 0-2 aty)
%            Number of variables   :   30 (  30   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms of Kleene algebra
include('Axioms/KLE002+0.ax').
%------------------------------------------------------------------------------
fof(an,axiom,
    sigma = addition(a,b) ).

fof(a,conjecture,
    leq(multiplication(a,multiplication(b,multiplication(b,multiplication(a,b)))),multiplication(star(sigma),multiplication(a,multiplication(sigma,a)))) ).

%------------------------------------------------------------------------------

