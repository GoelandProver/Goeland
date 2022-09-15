%--------------------------------------------------------------------------
% File     : HAL003+3 : TPTP v8.1.0. Released v2.6.0.
% Domain   : Homological Algebra
% Problem  : Short Five Lemma, Part 2
% Version  : [TPTP] axioms : Augmented.
% English  :

% Refs     : [Wei94] Weibel (1994), An Introduction to Homological Algebra
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.25 v8.1.0, 0.22 v7.4.0, 0.23 v7.3.0, 0.24 v7.2.0, 0.21 v7.1.0, 0.26 v7.0.0, 0.27 v6.4.0, 0.31 v6.3.0, 0.33 v6.2.0, 0.24 v6.1.0, 0.33 v6.0.0, 0.35 v5.5.0, 0.33 v5.4.0, 0.39 v5.3.0, 0.41 v5.2.0, 0.30 v5.1.0, 0.29 v5.0.0, 0.33 v4.1.0, 0.35 v4.0.1, 0.39 v4.0.0, 0.38 v3.7.0, 0.35 v3.5.0, 0.37 v3.3.0, 0.29 v3.2.0, 0.45 v3.1.0, 0.33 v2.7.0, 0.17 v2.6.0
% Syntax   : Number of formulae    :   34 (  18 unt;   0 def)
%            Number of atoms       :  101 (  23 equ)
%            Maximal formula atoms :    7 (   2 avg)
%            Number of connectives :   67 (   0   ~;   0   |;  41   &)
%                                         (   2 <=>;  24  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   16 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    7 (   6 usr;   0 prp; 1-4 aty)
%            Number of functors    :   17 (  17 usr;  14 con; 0-3 aty)
%            Number of variables   :   79 (  68   !;  11   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Augmented with lemmas suggested by YiLT.
%--------------------------------------------------------------------------
%----Include Standard homological algebra axioms
%--------------------------------------------------------------------------
% File     : HAL001+0 : TPTP v8.1.0. Released v2.6.0.
% Domain   : Homological Algebra
% Axioms   : Standard homological algebra axioms
% Version  : [TPTP] axioms.
% English  :

% Refs     : [Wei94] Weibel (1994), An Introduction to Homological Algebra
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   13 (   0 unt;   0 def)
%            Number of atoms       :   66 (  16 equ)
%            Maximal formula atoms :    7 (   5 avg)
%            Number of connectives :   53 (   0   ~;   0   |;  30   &)
%                                         (   2 <=>;  21  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   16 (  10 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    7 (   6 usr;   0 prp; 1-4 aty)
%            Number of functors    :    3 (   3 usr;   0 con; 1-3 aty)
%            Number of variables   :   69 (  65   !;   4   ?)
% SPC      : 

% Comments :
%--------------------------------------------------------------------------
fof(morphism,axiom,
    ! [Morphism,Dom,Cod] :
      ( morphism(Morphism,Dom,Cod)
     => ( ! [El] :
            ( element(El,Dom)
           => element(apply(Morphism,El),Cod) )
        & apply(Morphism,zero(Dom)) = zero(Cod) ) ) ).

fof(injection_properties,axiom,
    ! [Morphism,Dom,Cod] :
      ( ( injection(Morphism)
        & morphism(Morphism,Dom,Cod) )
     => ! [El1,El2] :
          ( ( element(El1,Dom)
            & element(El2,Dom)
            & apply(Morphism,El1) = apply(Morphism,El2) )
         => El1 = El2 ) ) ).

fof(properties_for_injection,axiom,
    ! [Morphism,Dom,Cod] :
      ( ( morphism(Morphism,Dom,Cod)
        & ! [El1,El2] :
            ( ( element(El1,Dom)
              & element(El2,Dom)
              & apply(Morphism,El1) = apply(Morphism,El2) )
           => El1 = El2 ) )
     => injection(Morphism) ) ).

%----Sasha's weird injection axioms
% input_formula(injection_properties,axiom, (
%     ! [Morphism,Dom,Cod] :
%       ( ( injection(Morphism)
%         & morphism(Morphism,Dom,Cod) )
%      => ! [El] :
%           ( ( element(El,Dom)
%             & equal(apply(Morphism,El),zero(Cod)) )
%          => equal(El,zero(Dom)) ) )  )).
%
% input_formula(properties_for_injection,axiom, (
%     ! [Morphism,Dom,Cod] :
%       ( ( morphism(Morphism,Dom,Cod)
%         & ! [El] :
%             ( ( element(El,Dom)
%               & equal(apply(Morphism,El),zero(Cod)) )
%            => equal(El,zero(Dom)) ) )
%      => injection(Morphism) )  )).

fof(surjection_properties,axiom,
    ! [Morphism,Dom,Cod] :
      ( ( surjection(Morphism)
        & morphism(Morphism,Dom,Cod) )
     => ! [ElCod] :
          ( element(ElCod,Cod)
         => ? [ElDom] :
              ( element(ElDom,Dom)
              & apply(Morphism,ElDom) = ElCod ) ) ) ).

fof(properties_for_surjection,axiom,
    ! [Morphism,Dom,Cod] :
      ( ( morphism(Morphism,Dom,Cod)
        & ! [ElCod] :
            ( element(ElCod,Cod)
           => ? [ElDom] :
                ( element(ElDom,Dom)
                & apply(Morphism,ElDom) = ElCod ) ) )
     => surjection(Morphism) ) ).

fof(exact_properties,axiom,
    ! [Morphism1,Morphism2,Dom,CodDom,Cod] :
      ( ( exact(Morphism1,Morphism2)
        & morphism(Morphism1,Dom,CodDom)
        & morphism(Morphism2,CodDom,Cod) )
     => ! [ElCodDom] :
          ( ( element(ElCodDom,CodDom)
            & apply(Morphism2,ElCodDom) = zero(Cod) )
        <=> ? [ElDom] :
              ( element(ElDom,Dom)
              & apply(Morphism1,ElDom) = ElCodDom ) ) ) ).

fof(properties_for_exact,axiom,
    ! [Morphism1,Morphism2,Dom,CodDom,Cod] :
      ( ( morphism(Morphism1,Dom,CodDom)
        & morphism(Morphism2,CodDom,Cod)
        & ! [ElCodDom] :
            ( ( element(ElCodDom,CodDom)
              & apply(Morphism2,ElCodDom) = zero(Cod) )
          <=> ? [ElDom] :
                ( element(ElDom,Dom)
                & apply(Morphism1,ElDom) = ElCodDom ) ) )
     => exact(Morphism1,Morphism2) ) ).

fof(commute_properties,axiom,
    ! [M1,M2,M3,M4,Dom,DomCod1,DomCod2,Cod] :
      ( ( commute(M1,M2,M3,M4)
        & morphism(M1,Dom,DomCod1)
        & morphism(M2,DomCod1,Cod)
        & morphism(M3,Dom,DomCod2)
        & morphism(M4,DomCod2,Cod) )
     => ! [ElDom] :
          ( element(ElDom,Dom)
         => apply(M2,apply(M1,ElDom)) = apply(M4,apply(M3,ElDom)) ) ) ).

fof(properties_for_commute,axiom,
    ! [M1,M2,M3,M4,Dom,DomCod1,DomCod2,Cod] :
      ( ( morphism(M1,Dom,DomCod1)
        & morphism(M2,DomCod1,Cod)
        & morphism(M3,Dom,DomCod2)
        & morphism(M4,DomCod2,Cod)
        & ! [ElDom] :
            ( element(ElDom,Dom)
           => apply(M2,apply(M1,ElDom)) = apply(M4,apply(M3,ElDom)) ) )
     => commute(M1,M2,M3,M4) ) ).

fof(subtract_in_domain,axiom,
    ! [Dom,El1,El2] :
      ( ( element(El1,Dom)
        & element(El2,Dom) )
     => element(subtract(Dom,El1,El2),Dom) ) ).

fof(subtract_to_0,axiom,
    ! [Dom,El] :
      ( element(El,Dom)
     => subtract(Dom,El,El) = zero(Dom) ) ).

fof(subtract_cancellation,axiom,
    ! [Dom,El1,El2] :
      ( ( element(El1,Dom)
        & element(El2,Dom) )
     => subtract(Dom,El1,subtract(Dom,El1,El2)) = El2 ) ).

fof(subtract_distribution,axiom,
    ! [Morphism,Dom,Cod] :
      ( morphism(Morphism,Dom,Cod)
     => ! [El1,El2] :
          ( ( element(El1,Dom)
            & element(El2,Dom) )
         => apply(Morphism,subtract(Dom,El1,El2)) = subtract(Cod,apply(Morphism,El1),apply(Morphism,El2)) ) ) ).

%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
fof(alpha_morphism,axiom,
    morphism(alpha,a,b) ).

fof(beta_morphism,axiom,
    morphism(beta,b,c) ).

fof(gamma_morphism,axiom,
    morphism(gamma,d,e) ).

fof(delta_morphism,axiom,
    morphism(delta,e,r) ).

fof(f_morphism,axiom,
    morphism(f,a,d) ).

fof(g_morphism,axiom,
    morphism(g,b,e) ).

fof(h_morphism,axiom,
    morphism(h,c,r) ).

fof(alpha_injection,axiom,
    injection(alpha) ).

fof(gamma_injection,axiom,
    injection(gamma) ).

fof(beta_surjection,axiom,
    surjection(beta) ).

fof(delta_surjection,axiom,
    surjection(delta) ).

fof(alpha_beta_exact,axiom,
    exact(alpha,beta) ).

fof(gamma_delta_exact,axiom,
    exact(gammma,delta) ).

fof(alpha_g_f_gamma_commute,axiom,
    commute(alpha,g,f,gamma) ).

fof(beta_h_g_delta_commute,axiom,
    commute(beta,h,g,delta) ).

fof(f_surjection,hypothesis,
    surjection(f) ).

fof(h_surjection,hypothesis,
    surjection(h) ).

fof(lemma3,axiom,
    ! [E] :
      ( element(E,e)
     => ? [R,B1] :
          ( element(R,r)
          & apply(delta,E) = R
          & element(B1,b)
          & apply(h,apply(beta,B1)) = R
          & apply(delta,apply(g,B1)) = R ) ) ).

fof(lemma8,axiom,
    ! [E] :
      ( element(E,e)
     => ? [B1,E1,A] :
          ( element(B1,b)
          & element(E1,e)
          & subtract(e,apply(g,B1),E) = E1
          & element(A,a)
          & apply(gamma,apply(f,A)) = E1
          & apply(g,apply(alpha,A)) = E1 ) ) ).

fof(lemma12,axiom,
    ! [E] :
      ( element(E,e)
     => ? [B1,B2] :
          ( element(B1,b)
          & element(B2,b)
          & apply(g,subtract(b,B1,B2)) = E ) ) ).

fof(g_surjection,conjecture,
    surjection(g) ).

%--------------------------------------------------------------------------
