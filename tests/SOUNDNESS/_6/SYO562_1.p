%------------------------------------------------------------------------------
% File     : SYO562_1 : TPTP v8.1.2. Released v5.3.0.
% Domain   : Syntactic
% Problem  : If-then-else
% Version  : Biased.
% English  : 

% Refs     : 
% Source   : TPTP
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.73 v7.5.0, 0.75 v7.4.0, 0.76 v7.3.0, 0.72 v7.2.0, 0.71 v7.1.0, 0.68 v7.0.0, 1.00 v5.3.0
% Syntax   : Number of formulae    :    8 (   3 unt;   4 typ;   0 def)
%            Number of atoms       :    7 (   0 equ)
%            Maximal formula atoms :    3 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of FOOLs       :    1 (   1 fml;   0 var)
%            Number of X terms     :    2 (   0  [];   2 ite;   0 let)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   3   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    2 (   2 usr;   1 con; 0-1 aty)
%            Number of variables   :    3 (   2   !;   1   ?;   1   :)
% SPC      : TX0_CSA_NEQ_NAR

% Comments : Designed to test if systems have implemented if-then-else.
%------------------------------------------------------------------------------
tff(a_type,type,
    a: $i ).

tff(f_type,type,
    f: $i > $i ).

tff(p_type,type,
    p: $i > $o ).

tff(q_type,type,
    q: ( $i * $i ) > $o ).

tff(ite,axiom,
    ! [Z: $i] :
      $ite(
        ? [X] : p(f(X)),
        ! [X] : q(X,X),
        q(Z,a) ) ).

tff(ite_001,axiom,
    p(
      $ite(q(a,f(a)),a,f(a))) ).

tff(fact,axiom,
    q(a,a) ).

tff(prove,conjecture,
    q(f(a),f(a)) ).

%------------------------------------------------------------------------------
