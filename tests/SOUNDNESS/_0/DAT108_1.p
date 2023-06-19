%------------------------------------------------------------------------------
% File     : DAT108_1 : TPTP v8.1.2. Released v6.4.0.
% Domain   : Data Structures
% Problem  : Integer collections with counting
% Version  : [Wal10] axioms.
% English  :

% Refs     : [PW06]  Prevosto & Waldmann (2006), SPASS+T
%          : [Wal10] Waldmann (2010), Email to Geoff Sutcliffe
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v6.4.0
% Syntax   : Number of formulae    :   18 (   4 unt;   6 typ;   0 def)
%            Number of atoms       :   22 (   9 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :   15 (   5   ~;   1   |;   1   &)
%                                         (   7 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number arithmetic     :   19 (   1 atm;   2 fun;   4 num;  12 var)
%            Number of types       :    3 (   1 usr;   1 ari)
%            Number of type conns  :    7 (   4   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    8 (   4 usr;   3 con; 0-2 aty)
%            Number of variables   :   23 (  23   !;   0   ?;  23   :)
% SPC      : TF0_SAT_EQU_ARI

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms for Integer collections
include('Axioms/DAT002_0.ax').
%----Include axioms for Integer collections with counting
include('Axioms/DAT002=1.ax').
%------------------------------------------------------------------------------
