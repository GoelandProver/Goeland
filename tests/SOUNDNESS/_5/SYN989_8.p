%------------------------------------------------------------------------------
% File     : SYN989_8 : TPTP v8.1.2. Released v8.0.0.
% Domain   : Syntactic
% Problem  : All things are true or false
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v8.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 typ;   0 def)
%            Number of atoms       :    0 (   0 equ)
%            Maximal formula atoms :    0 (   0 avg)
%            Number of connectives :    2 (   1   ~;   1   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    2 (   0 fml;   2 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    0 (   0 usr;   0 prp; --- aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    1 (   1   !;   0   ?;   1   :)
% SPC      : TX0_SAT_NEQ_NAR

% Comments : Translated to TXF from the THF version.
%------------------------------------------------------------------------------
tff(thm,axiom,
    ! [X: $o] :
      ( (X)
      | ~ (X) ) ).

%------------------------------------------------------------------------------
