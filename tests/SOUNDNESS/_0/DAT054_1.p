%------------------------------------------------------------------------------
% File     : DAT054_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Data Structures
% Problem  : Decreasing pointer list
% Version  : Especial.
% English  : 

% Refs     : [Wal06] Waldmann (2006), Email to Geoff Sutcliffe
% Source   : [Wal06]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 0.33 v7.1.0, 0.50 v7.0.0, 0.33 v6.4.0, 0.67 v6.3.0, 1.00 v6.2.0, 0.88 v6.1.0, 0.89 v6.0.0, 1.00 v5.4.0, 0.88 v5.3.0, 0.90 v5.2.0, 1.00 v5.0.0
% Syntax   : Number of formulae    :    6 (   0 unt;   5 typ;   0 def)
%            Number of atoms       :   11 (   2 equ)
%            Maximal formula atoms :   11 (   1 avg)
%            Number of connectives :   15 (   5   ~;   5   |;   4   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (  10 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number arithmetic     :    6 (   3 atm;   0 fun;   2 num;   1 var)
%            Number of types       :    3 (   1 usr;   1 ari)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    5 (   3 usr;   3 con; 0-1 aty)
%            Number of variables   :    4 (   4   !;   0   ?;   4   :)
% SPC      : TF0_CSA_EQU_ARI

% Comments : This was intended to be a theorem, but the monotonicity conjunct
%            does require the 2nd and 3rd elements' data to be decreasing.
%------------------------------------------------------------------------------
tff(element_type,type,
    element: $tType ).

tff(data_type,type,
    data: element > $int ).

tff(next_type,type,
    next: element > element ).

tff(iselem_type,type,
    iselem: element > $o ).

tff(a_type,type,
    a: element ).

tff(decreasing_pointer_list,conjecture,
    ( ( ! [X: element,Z: $int] :
          ( ~ iselem(X)
          | ( data(X) != Z )
          | $less(0,Z) )
      & ! [X: element,Y: element] :
          ( ~ iselem(X)
          | ~ iselem(next(Y))
          | ( next(X) != Y )
          | $less(data(Y),data(X)) )
      & iselem(a)
      & iselem(next(a))
      & iselem(next(next(a))) )
   => $lesseq(3,data(a)) ) ).

%------------------------------------------------------------------------------
