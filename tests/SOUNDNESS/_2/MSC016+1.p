%------------------------------------------------------------------------------
% File     : MSC016+1 : TPTP v8.1.2. Released v3.5.0.
% Domain   : Miscellaneous
% Problem  : Problem from question answering system
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.1.0, 0.33 v6.4.0, 0.25 v6.3.0, 0.33 v6.2.0, 0.56 v6.1.0, 0.60 v6.0.0, 0.57 v5.5.0, 0.43 v5.4.0, 0.67 v5.3.0, 0.62 v5.2.0, 0.75 v5.0.0, 0.44 v4.1.0, 0.67 v3.7.0, 0.50 v3.5.0
% Syntax   : Number of formulae    :  136 ( 132 unt;   0 def)
%            Number of atoms       :  158 (   0 equ)
%            Maximal formula atoms :   19 (   1 avg)
%            Number of connectives :   22 (   0   ~;  13   |;   6   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    4 (   4 usr;   0 prp; 1-3 aty)
%            Number of functors    :   17 (  17 usr;  14 con; 0-2 aty)
%            Number of variables   :   70 (  67   !;   3   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments : This came out of the MS work of Aparna Yerikalapudi.
%------------------------------------------------------------------------------
fof(abc,axiom,
    p(a,b,c) ).

fof(gwb,axiom,
    p(g(e,e),w,b) ).

fof(hgg,axiom,
    p(h(d),g(a,c),g(b,b)) ).

fof(hgk,axiom,
    p(h(d),g(e,e),k) ).

fof(klh,axiom,
    p(k,lkg,hill) ).

fof(aaa,axiom,
    p(a,a,a) ).

fof(lilly,axiom,
    flower(lilly) ).

fof(pig,axiom,
    animal(pig) ).

fof(horse,axiom,
    animal(horse) ).

fof(cow,axiom,
    animal(cow) ).

fof(pet,axiom,
    animal(pet(aparna)) ).

fof(ld__symmetry,axiom,
    ! [X,Y] :
      ( ld__(X,Y)
     => ld__(Y,X) ) ).

fof(ld__aparna_a,axiom,
    ld__(aparna,a) ).

fof(ld__cow_a,axiom,
    ld__(cow,a) ).

fof(ld__horse_a,axiom,
    ld__(horse,a) ).

fof(ld__lilly_a,axiom,
    ld__(lilly,a) ).

fof(ld__a_pet,axiom,
    ! [X1] : ld__(a,pet(X1)) ).

fof(ld__pig_a,axiom,
    ld__(pig,a) ).

fof(ld__aparna_b,axiom,
    ld__(aparna,b) ).

fof(ld__cow_b,axiom,
    ld__(cow,b) ).

fof(ld__horse_b,axiom,
    ld__(horse,b) ).

fof(ld__lilly_b,axiom,
    ld__(lilly,b) ).

fof(ld__b_pet,axiom,
    ! [X1] : ld__(b,pet(X1)) ).

fof(ld__pig_b,axiom,
    ld__(pig,b) ).

fof(ld__aparna_c,axiom,
    ld__(aparna,c) ).

fof(ld__cow_c,axiom,
    ld__(cow,c) ).

fof(ld__horse_c,axiom,
    ld__(horse,c) ).

fof(ld__lilly_c,axiom,
    ld__(lilly,c) ).

fof(ld__c_pet,axiom,
    ! [X1] : ld__(c,pet(X1)) ).

fof(ld__pig_c,axiom,
    ld__(pig,c) ).

fof(ld__aparna_d,axiom,
    ld__(aparna,d) ).

fof(ld__cow_d,axiom,
    ld__(cow,d) ).

fof(ld__horse_d,axiom,
    ld__(horse,d) ).

fof(ld__lilly_d,axiom,
    ld__(lilly,d) ).

fof(ld__d_pet,axiom,
    ! [X1] : ld__(d,pet(X1)) ).

fof(ld__pig_d,axiom,
    ld__(pig,d) ).

fof(ld__aparna_e,axiom,
    ld__(aparna,e) ).

fof(ld__cow_e,axiom,
    ld__(cow,e) ).

fof(ld__horse_e,axiom,
    ld__(horse,e) ).

fof(ld__lilly_e,axiom,
    ld__(lilly,e) ).

fof(ld__e_pet,axiom,
    ! [X1] : ld__(e,pet(X1)) ).

fof(ld__pig_e,axiom,
    ld__(pig,e) ).

fof(ld__aparna_g,axiom,
    ! [X1,X2] : ld__(aparna,g(X1,X2)) ).

fof(ld__cow_g,axiom,
    ! [X1,X2] : ld__(cow,g(X1,X2)) ).

fof(ld__horse_g,axiom,
    ! [X1,X2] : ld__(horse,g(X1,X2)) ).

fof(ld__lilly_g,axiom,
    ! [X1,X2] : ld__(lilly,g(X1,X2)) ).

fof(ld__g_pet,axiom,
    ! [X1,X2,Y1] : ld__(pet(Y1),g(X1,X2)) ).

fof(ld__pig_g,axiom,
    ! [X1,X2] : ld__(pig,g(X1,X2)) ).

fof(ld__aparna_h,axiom,
    ! [X1] : ld__(aparna,h(X1)) ).

fof(ld__cow_h,axiom,
    ! [X1] : ld__(cow,h(X1)) ).

fof(ld__horse_h,axiom,
    ! [X1] : ld__(horse,h(X1)) ).

fof(ld__lilly_h,axiom,
    ! [X1] : ld__(lilly,h(X1)) ).

fof(ld__h_pet,axiom,
    ! [X1,Y1] : ld__(pet(Y1),h(X1)) ).

fof(ld__pig_h,axiom,
    ! [X1] : ld__(pig,h(X1)) ).

fof(ld__aparna_hill,axiom,
    ld__(aparna,hill) ).

fof(ld__cow_hill,axiom,
    ld__(cow,hill) ).

fof(ld__horse_hill,axiom,
    ld__(horse,hill) ).

fof(ld__lilly_hill,axiom,
    ld__(lilly,hill) ).

fof(ld__hill_pet,axiom,
    ! [X1] : ld__(hill,pet(X1)) ).

fof(ld__pig_hill,axiom,
    ld__(pig,hill) ).

fof(ld__aparna_k,axiom,
    ld__(aparna,k) ).

fof(ld__cow_k,axiom,
    ld__(cow,k) ).

fof(ld__horse_k,axiom,
    ld__(horse,k) ).

fof(ld__lilly_k,axiom,
    ld__(lilly,k) ).

fof(ld__k_pet,axiom,
    ! [X1] : ld__(k,pet(X1)) ).

fof(ld__pig_k,axiom,
    ld__(pig,k) ).

fof(ld__aparna_lkg,axiom,
    ld__(aparna,lkg) ).

fof(ld__cow_lkg,axiom,
    ld__(cow,lkg) ).

fof(ld__horse_lkg,axiom,
    ld__(horse,lkg) ).

fof(ld__lilly_lkg,axiom,
    ld__(lilly,lkg) ).

fof(ld__lkg_pet,axiom,
    ! [X1] : ld__(lkg,pet(X1)) ).

fof(ld__pig_lkg,axiom,
    ld__(pig,lkg) ).

fof(ld__aparna_w,axiom,
    ld__(aparna,w) ).

fof(ld__cow_w,axiom,
    ld__(cow,w) ).

fof(ld__horse_w,axiom,
    ld__(horse,w) ).

fof(ld__lilly_w,axiom,
    ld__(lilly,w) ).

fof(ld__w_pet,axiom,
    ! [X1] : ld__(w,pet(X1)) ).

fof(ld__pig_w,axiom,
    ld__(pig,w) ).

fof(ld__g,axiom,
    ! [X1,X2,X3,X4] :
      ( ( ld__(X1,X2)
        | ld__(X3,X4) )
     => ld__(g(X1,X3),g(X2,X4)) ) ).

fof(ld__h,axiom,
    ! [X1,X2] :
      ( ld__(X1,X2)
     => ld__(h(X1),h(X2)) ) ).

fof(ld__w_a,axiom,
    ld__(w,a) ).

fof(ld__d_a,axiom,
    ld__(d,a) ).

fof(ld__lkg_a,axiom,
    ld__(lkg,a) ).

fof(ld__a_c,axiom,
    ld__(a,c) ).

fof(ld__a_h,axiom,
    ! [X1] : ld__(a,h(X1)) ).

fof(ld__k_a,axiom,
    ld__(k,a) ).

fof(ld__hill_a,axiom,
    ld__(hill,a) ).

fof(ld__e_a,axiom,
    ld__(e,a) ).

fof(ld__a_g,axiom,
    ! [X1,X2] : ld__(a,g(X1,X2)) ).

fof(ld__a_b,axiom,
    ld__(a,b) ).

fof(ld__b_g,axiom,
    ! [X1,X2] : ld__(b,g(X1,X2)) ).

fof(ld__k_b,axiom,
    ld__(k,b) ).

fof(ld__w_b,axiom,
    ld__(w,b) ).

fof(ld__d_b,axiom,
    ld__(d,b) ).

fof(ld__hill_b,axiom,
    ld__(hill,b) ).

fof(ld__b_h,axiom,
    ! [X1] : ld__(b,h(X1)) ).

fof(ld__e_b,axiom,
    ld__(e,b) ).

fof(ld__b_c,axiom,
    ld__(b,c) ).

fof(ld__lkg_b,axiom,
    ld__(lkg,b) ).

fof(ld__w_c,axiom,
    ld__(w,c) ).

fof(ld__c_g,axiom,
    ! [X1,X2] : ld__(c,g(X1,X2)) ).

fof(ld__lkg_c,axiom,
    ld__(lkg,c) ).

fof(ld__e_c,axiom,
    ld__(e,c) ).

fof(ld__d_c,axiom,
    ld__(d,c) ).

fof(ld__k_c,axiom,
    ld__(k,c) ).

fof(ld__c_h,axiom,
    ! [X1] : ld__(c,h(X1)) ).

fof(ld__hill_c,axiom,
    ld__(hill,c) ).

fof(ld__lkg_d,axiom,
    ld__(lkg,d) ).

fof(ld__d_g,axiom,
    ! [X1,X2] : ld__(d,g(X1,X2)) ).

fof(ld__k_d,axiom,
    ld__(k,d) ).

fof(ld__hill_d,axiom,
    ld__(hill,d) ).

fof(ld__d_w,axiom,
    ld__(d,w) ).

fof(ld__d_h,axiom,
    ! [X1] : ld__(d,h(X1)) ).

fof(ld__d_e,axiom,
    ld__(d,e) ).

fof(ld__e_h,axiom,
    ! [X1] : ld__(e,h(X1)) ).

fof(ld__e_w,axiom,
    ld__(e,w) ).

fof(ld__e_g,axiom,
    ! [X1,X2] : ld__(e,g(X1,X2)) ).

fof(ld__lkg_e,axiom,
    ld__(lkg,e) ).

fof(ld__hill_e,axiom,
    ld__(hill,e) ).

fof(ld__k_e,axiom,
    ld__(k,e) ).

fof(ld__g_h,axiom,
    ! [X1,X2,Y1] : ld__(h(Y1),g(X1,X2)) ).

fof(ld__w_g,axiom,
    ! [X1,X2] : ld__(w,g(X1,X2)) ).

fof(ld__k_g,axiom,
    ! [X1,X2] : ld__(k,g(X1,X2)) ).

fof(ld__lkg_g,axiom,
    ! [X1,X2] : ld__(lkg,g(X1,X2)) ).

fof(ld__hill_g,axiom,
    ! [X1,X2] : ld__(hill,g(X1,X2)) ).

fof(ld__lkg_h,axiom,
    ! [X1] : ld__(lkg,h(X1)) ).

fof(ld__hill_h,axiom,
    ! [X1] : ld__(hill,h(X1)) ).

fof(ld__w_h,axiom,
    ! [X1] : ld__(w,h(X1)) ).

fof(ld__k_h,axiom,
    ! [X1] : ld__(k,h(X1)) ).

fof(ld__lkg_hill,axiom,
    ld__(lkg,hill) ).

fof(ld__hill_k,axiom,
    ld__(hill,k) ).

fof(ld__hill_w,axiom,
    ld__(hill,w) ).

fof(ld__k_w,axiom,
    ld__(k,w) ).

fof(ld__lkg_k,axiom,
    ld__(lkg,k) ).

fof(ld__lkg_w,axiom,
    ld__(lkg,w) ).

fof(no_more_answers,conjecture,
    ? [X,Y,Z] :
      ( p(X,Y,Z)
      & ( ld__(X,k)
        | ld__(Y,lkg)
        | ld__(Z,hill) )
      & ( ld__(X,h(d))
        | ld__(Y,g(e,e))
        | ld__(Z,k) )
      & ( ld__(X,a)
        | ld__(Y,b)
        | ld__(Z,c) )
      & ( ld__(X,g(e,e))
        | ld__(Y,w)
        | ld__(Z,b) )
      & ( ld__(X,h(d))
        | ld__(Y,g(a,c))
        | ld__(Z,g(b,b)) )
      & ( ld__(X,a)
        | ld__(Y,a)
        | ld__(Z,a) ) ) ).

%------------------------------------------------------------------------------
