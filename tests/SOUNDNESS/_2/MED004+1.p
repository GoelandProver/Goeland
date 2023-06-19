%------------------------------------------------------------------------------
% File     : MED004+1 : TPTP v8.1.2. Released v3.2.0.
% Domain   : Medicine
% Problem  : No suitable therapy for patients with exhausted B-cells
% Version  : [HLB05] axioms : Especial.
% English  : There is not a suitable therapy for patients with exhausted
%            B-cells available.

% Refs     : [HLB05] Hommersom et al. (2005), Automated Theorem Proving for
%          : [Hom06] Hommersom (2006), Email to G. Sutcliffe
% Source   : [Hom06]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.0.0, 0.33 v6.4.0, 0.00 v6.2.0, 0.11 v6.1.0, 0.10 v6.0.0, 0.00 v5.5.0, 0.29 v5.4.0, 0.33 v5.3.0, 0.38 v5.0.0, 0.22 v4.1.0, 0.17 v4.0.1, 0.00 v3.4.0, 0.17 v3.3.0, 0.33 v3.2.0
% Syntax   : Number of formulae    :   19 (   1 unt;   0 def)
%            Number of atoms       :   85 (   0 equ)
%            Maximal formula atoms :   11 (   4 avg)
%            Number of connectives :  105 (  39   ~;  12   |;  19   &)
%                                         (   0 <=>;  35  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   15 (  15 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :   45 (  45   !;   0   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
include('Axioms/MED001+0.ax').
%------------------------------------------------------------------------------
fof(treatmentex_sub,conjecture,
    ( ( ! [X0] :
          ( ~ gt(n0,X0)
         => ( drugi(X0)
            & drugsu(X0)
            & drugbg(X0) ) )
      & ! [X0] :
          ( gt(n0,X0)
         => conditionhyper(X0) )
      & bcapacityex(n0) )
   => ! [X0] :
        ( ~ gt(n0,X0)
       => conditionnormo(X0) ) ) ).

%------------------------------------------------------------------------------
