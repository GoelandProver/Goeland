%------------------------------------------------------------------------------
% File     : KRS239+1 : TPTP v8.1.2. Bugfixed v5.4.0.
% Domain   : Knowledge Representation
% Problem  : SAT xora THM
% Version  : [Sut08] axioms.
% English  :

% Refs     : [Sut08] Sutcliffe (2008), The SZS Ontologies for Automated Rea
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.67 v8.1.0, 0.33 v7.5.0, 0.00 v7.4.0, 0.33 v7.1.0, 0.00 v7.0.0, 0.33 v6.4.0, 0.75 v6.3.0, 0.83 v6.2.0, 0.89 v6.1.0, 1.00 v5.5.0, 0.86 v5.4.0
% Syntax   : Number of formulae    :   33 (   3 unt;   0 def)
%            Number of atoms       :  107 (   0 equ)
%            Maximal formula atoms :    7 (   3 avg)
%            Number of connectives :   96 (  22   ~;   1   |;  35   &)
%                                         (  28 <=>;   8  =>;   0  <=;   2 <~>)
%            Maximal formula depth :   10 (   6 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    7 (   7 usr;   0 prp; 2-3 aty)
%            Number of functors    :   20 (  20 usr;  19 con; 0-1 aty)
%            Number of variables   :  122 (  72   !;  50   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
% Bugfixes : v5.4.0 - Added missing axiom in KRS001+1.ax
%------------------------------------------------------------------------------
%----Include SZS success ontology nodes
include('Axioms/KRS001+0.ax').
%----Include SZS success ontology node relationships
include('Axioms/KRS001+1.ax').
%------------------------------------------------------------------------------
fof(xora_sat_thm,conjecture,
    xora(sat,thm) ).

%------------------------------------------------------------------------------
