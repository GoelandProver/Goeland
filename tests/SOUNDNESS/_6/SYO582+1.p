%------------------------------------------------------------------------------
% File     : SYO582+1 : TPTP v8.1.2. Released v5.5.0.
% Domain   : Syntactic
% Problem  : Hard buttercup non-theorem
% Version  : Especial.
% English  :

% Refs     : [Tha10] Thau (2010), Email to Geoff Sutcliffe
% Source   : TPTP
% Names    : hard_for_mace4.txt [Tha10]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0
% Syntax   : Number of formulae    :   38 (  16 unt;   0 def)
%            Number of atoms       :   94 (   0 equ)
%            Maximal formula atoms :   14 (   2 avg)
%            Number of connectives :   72 (  16   ~;   3   |;  31   &)
%                                         (   3 <=>;  19  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   16 (  16 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   55 (  22   !;  33   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments : 
%------------------------------------------------------------------------------
fof(sos_01,axiom,
    ! [X0] :
      ( k04_buttercup10517(X0)
     => k04_buttercup10516(X0) ) ).

fof(sos_02,axiom,
    ! [X1] :
      ( b48_buttercup10518(X1)
     => b48_buttercup10515(X1) ) ).

fof(sos_03,axiom,
    ! [X2] :
      ( b48_buttercup10519(X2)
     => b48_buttercup10515(X2) ) ).

fof(sos_04,axiom,
    ! [X3] :
      ( b48_buttercup10520(X3)
     => b48_buttercup10515(X3) ) ).

fof(sos_05,axiom,
    ! [X4] :
      ( b48_buttercup10521(X4)
     => b48_buttercup10515(X4) ) ).

fof(sos_06,axiom,
    ! [X5] :
      ( b48_buttercup10421(X5)
     => b48_buttercup10417(X5) ) ).

fof(sos_07,axiom,
    ! [X6] :
      ( b48_buttercup10422(X6)
     => b48_buttercup10417(X6) ) ).

fof(sos_08,axiom,
    ! [X7] :
      ( b48_buttercup10227(X7)
     => b48_buttercup10222(X7) ) ).

fof(sos_09,axiom,
    ! [X8] :
      ( b48_buttercup10228(X8)
     => b48_buttercup10222(X8) ) ).

fof(sos_10,axiom,
    ! [X9] :
      ( b48_buttercup10229(X9)
     => b48_buttercup10222(X9) ) ).

fof(sos_11,axiom,
    ( ! [X10] :
        ( b48_buttercup10422(X10)
       => k04_buttercup10419(X10) )
    & ? [X11] :
        ( k04_buttercup10419(X11)
        & ~ b48_buttercup10422(X11) ) ) ).

fof(sos_12,axiom,
    ( ! [X12] :
        ( b48_buttercup10227(X12)
       => k04_buttercup10225(X12) )
    & ? [X13] :
        ( k04_buttercup10225(X13)
        & ~ b48_buttercup10227(X13) ) ) ).

fof(sos_13,axiom,
    ( ! [X14] :
        ( b48_buttercup10228(X14)
       => k04_buttercup10419(X14) )
    & ? [X15] :
        ( k04_buttercup10419(X15)
        & ~ b48_buttercup10228(X15) ) ) ).

fof(sos_14,axiom,
    ? [X16,X17,X18] :
      ( k04_buttercup10419(X16)
      & b48_buttercup10222(X16)
      & k04_buttercup10419(X17)
      & ~ b48_buttercup10222(X17)
      & ~ k04_buttercup10419(X18)
      & b48_buttercup10222(X18) ) ).

fof(sos_15,axiom,
    ( ! [X19] :
        ( k04_buttercup10516(X19)
       => b48_buttercup10417(X19) )
    & ? [X20] :
        ( b48_buttercup10417(X20)
        & ~ k04_buttercup10516(X20) ) ) ).

fof(sos_16,axiom,
    ( ! [X21] :
        ( b48_buttercup10229(X21)
       => k04_buttercup10225(X21) )
    & ? [X22] :
        ( k04_buttercup10225(X22)
        & ~ b48_buttercup10229(X22) ) ) ).

fof(sos_17,axiom,
    ( ! [X23] :
        ( b48_buttercup10515(X23)
       => k04_buttercup10516(X23) )
    & ? [X24] :
        ( k04_buttercup10516(X24)
        & ~ b48_buttercup10515(X24) ) ) ).

fof(sos_18,axiom,
    ( ! [X25] :
        ( k04_buttercup10225(X25)
       => b48_buttercup10222(X25) )
    & ? [X26] :
        ( b48_buttercup10222(X26)
        & ~ k04_buttercup10225(X26) ) ) ).

fof(sos_19,axiom,
    ~ ! [X27] :
        ( k04_buttercup10419(X27)
      <=> b48_buttercup10421(X27) ) ).

fof(sos_20,axiom,
    ! [X28] :
      ( k04_buttercup10517(X28)
    <=> b48_buttercup10421(X28) ) ).

fof(sos_21,axiom,
    ? [X29,X30,X31] :
      ( k04_buttercup10419(X29)
      & b48_buttercup10417(X29)
      & k04_buttercup10419(X30)
      & ~ b48_buttercup10417(X30)
      & ~ k04_buttercup10419(X31)
      & b48_buttercup10417(X31) ) ).

fof(sos_22,axiom,
    ? [X32] : k04_buttercup10225(X32) ).

fof(sos_23,axiom,
    ? [X33] : k04_buttercup10517(X33) ).

fof(sos_24,axiom,
    ? [X34] : k04_buttercup10516(X34) ).

fof(sos_25,axiom,
    ? [X35] : k04_buttercup10419(X35) ).

fof(sos_26,axiom,
    ? [X36] : b48_buttercup10521(X36) ).

fof(sos_27,axiom,
    ? [X37] : b48_buttercup10422(X37) ).

fof(sos_28,axiom,
    ? [X38] : b48_buttercup10421(X38) ).

fof(sos_29,axiom,
    ? [X39] : b48_buttercup10227(X39) ).

fof(sos_30,axiom,
    ? [X40] : b48_buttercup10229(X40) ).

fof(sos_31,axiom,
    ? [X41] : b48_buttercup10417(X41) ).

fof(sos_32,axiom,
    ? [X42] : b48_buttercup10222(X42) ).

fof(sos_33,axiom,
    ? [X43] : b48_buttercup10515(X43) ).

fof(sos_34,axiom,
    ? [X44] : b48_buttercup10228(X44) ).

fof(sos_35,axiom,
    ? [X45] : b48_buttercup10519(X45) ).

fof(sos_36,axiom,
    ? [X46] : b48_buttercup10518(X46) ).

fof(sos_37,axiom,
    ? [X47] : b48_buttercup10520(X47) ).

fof(goals_38,conjecture,
    ( ! [X48] :
        ( k04_buttercup10225(X48)
      <=> b48_buttercup10519(X48) )
    | ( ! [X49] :
          ( b48_buttercup10519(X49)
         => k04_buttercup10225(X49) )
      & ? [X50] :
          ( k04_buttercup10225(X50)
          & ~ b48_buttercup10519(X50) ) )
    | ? [X51,X52,X53] :
        ( k04_buttercup10225(X51)
        & b48_buttercup10519(X51)
        & k04_buttercup10225(X52)
        & ~ b48_buttercup10519(X52)
        & ~ k04_buttercup10225(X53)
        & b48_buttercup10519(X53) )
    | ! [X54] :
        ( k04_buttercup10225(X54)
       => ~ b48_buttercup10519(X54) ) ) ).

%------------------------------------------------------------------------------
