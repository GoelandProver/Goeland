%--------------------------------------------------------------------------
% File     : HAL003+1 : TPTP v8.1.2. Released v2.6.0.
% Domain   : Homological Algebra
% Problem  : Short Five Lemma, Part 2
% Version  : [TPTP] axioms.
% English  :

% Refs     : [Wei94] Weibel (1994), An Introduction to Homological Algebra
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0, 0.33 v6.3.0, 0.67 v6.2.0, 0.64 v6.0.0, 0.69 v5.5.0, 0.38 v5.4.0, 0.71 v5.3.0, 0.86 v5.2.0, 0.83 v5.0.0, 0.71 v4.1.0, 0.80 v4.0.0, 0.75 v3.7.0, 0.33 v3.5.0, 0.67 v3.4.0, 0.33 v3.2.0, 0.67 v3.1.0, 1.00 v2.6.0
% Syntax   : Number of formulae    :   31 (  18 unt;   0 def)
%            Number of atoms       :   84 (  16 equ)
%            Maximal formula atoms :    7 (   2 avg)
%            Number of connectives :   53 (   0   ~;   0   |;  30   &)
%                                         (   2 <=>;  21  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   16 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    7 (   6 usr;   0 prp; 1-4 aty)
%            Number of functors    :   17 (  17 usr;  14 con; 0-3 aty)
%            Number of variables   :   69 (  65   !;   4   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Include Standard homological algebra axioms
include('Axioms/HAL001+0.ax').
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

fof(g_surjection,conjecture,
    surjection(g) ).

%--------------------------------------------------------------------------
