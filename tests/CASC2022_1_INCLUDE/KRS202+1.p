%------------------------------------------------------------------------------
% File     : KRS202+1 : TPTP v8.1.0. Bugfixed v5.4.0.
% Domain   : Knowledge Representation
% Problem  : ESA nota THM
% Version  : [Sut08] axioms.
% English  :

% Refs     : [Sut08] Sutcliffe (2008), The SZS Ontologies for Automated Rea
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.27 v8.1.0, 0.14 v7.5.0, 0.24 v7.4.0, 0.12 v7.3.0, 0.29 v7.2.0, 0.17 v7.1.0, 0.25 v7.0.0, 0.14 v6.4.0, 0.07 v6.3.0, 0.08 v6.2.0, 0.27 v6.1.0, 0.28 v6.0.0, 0.50 v5.5.0, 0.42 v5.4.0
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
% SPC      : FOF_THM_RFO_NEQ

% Comments :
% Bugfixes : v5.4.0 - Added missing axiom in KRS001+1.ax
%------------------------------------------------------------------------------
%----Include SZS success ontology nodes
%------------------------------------------------------------------------------
% File     : KRS001+0 : TPTP v8.1.0. Released v3.6.0.
% Domain   : Knowledge Representation
% Axioms   : SZS success ontology nodes
% Version  : [Sut08] axioms.
% English  :

% Refs     : [Sut08] Sutcliffe (2008), The SZS Ontologies for Automated Rea
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   19 (   0 unt;   0 def)
%            Number of atoms       :   70 (   0 equ)
%            Maximal formula atoms :    7 (   3 avg)
%            Number of connectives :   63 (  12   ~;   0   |;  24   &)
%                                         (  22 <=>;   5  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   7 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    2 (   2 usr;   0 prp; 2-3 aty)
%            Number of functors    :   20 (  20 usr;  19 con; 0-1 aty)
%            Number of variables   :   77 (  49   !;  28   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
fof(unp,axiom,
    ! [Ax,C] :
      ( ( ~ ? [I1] : model(I1,Ax)
       => ~ ? [I2] : model(I2,C) )
    <=> status(Ax,C,unp) ) ).

fof(sap,axiom,
    ! [Ax,C] :
      ( ( ? [I1] : model(I1,Ax)
       => ? [I2] : model(I2,C) )
    <=> status(Ax,C,sap) ) ).

fof(esa,axiom,
    ! [Ax,C] :
      ( ( ? [I1] : model(I1,Ax)
      <=> ? [I2] : model(I2,C) )
    <=> status(Ax,C,esa) ) ).

fof(sat,axiom,
    ! [Ax,C] :
      ( ? [I1] :
          ( model(I1,Ax)
          & model(I1,C) )
    <=> status(Ax,C,sat) ) ).

fof(thm,axiom,
    ! [Ax,C] :
      ( ! [I1] :
          ( model(I1,Ax)
         => model(I1,C) )
    <=> status(Ax,C,thm) ) ).

fof(eqv,axiom,
    ! [Ax,C] :
      ( ( ? [I1] : model(I1,Ax)
        & ! [I2] :
            ( model(I2,Ax)
          <=> model(I2,C) ) )
    <=> status(Ax,C,eqv) ) ).

fof(tac,axiom,
    ! [Ax,C] :
      ( ( ? [I1] : model(I1,Ax)
        & ! [I2] : model(I2,C) )
    <=> status(Ax,C,tac) ) ).

fof(wec,axiom,
    ! [Ax,C] :
      ( ( ? [I1] : model(I1,Ax)
        & ! [I2] :
            ( model(I2,Ax)
           => model(I2,C) )
        & ? [I3] :
            ( model(I3,C)
            & ~ model(I3,Ax) ) )
    <=> status(Ax,C,wec) ) ).

fof(eth,axiom,
    ! [Ax,C] :
      ( ( ? [I1] : model(I1,Ax)
        & ? [I2] : ~ model(I2,Ax)
        & ! [I3] :
            ( model(I3,Ax)
          <=> model(I3,C) ) )
    <=> status(Ax,C,eth) ) ).

fof(tau,axiom,
    ! [Ax,C] :
      ( ! [I1] :
          ( model(I1,Ax)
          & model(I1,C) )
    <=> status(Ax,C,tau) ) ).

fof(wtc,axiom,
    ! [Ax,C] :
      ( ( ? [I1] : model(I1,Ax)
        & ? [I2] : ~ model(I2,Ax)
        & ! [I3] : model(I3,C) )
    <=> status(Ax,C,wtc) ) ).

fof(wth,axiom,
    ! [Ax,C] :
      ( ( ? [I1] : model(I1,Ax)
        & ! [I2] :
            ( model(I2,Ax)
           => model(I2,C) )
        & ? [I3] :
            ( model(I3,C)
            & ~ model(I3,Ax) )
        & ? [I4] : ~ model(I4,C) )
    <=> status(Ax,C,wth) ) ).

fof(cax,axiom,
    ! [Ax,C] :
      ( ~ ? [I1] : model(I1,Ax)
    <=> status(Ax,C,cax) ) ).

fof(sca,axiom,
    ! [Ax,C] :
      ( ( ~ ? [I1] : model(I1,Ax)
        & ? [I2] : model(I2,C) )
    <=> status(Ax,C,sca) ) ).

fof(tca,axiom,
    ! [Ax,C] :
      ( ( ~ ? [I1] : model(I1,Ax)
        & ! [I2] : model(I2,C) )
    <=> status(Ax,C,tca) ) ).

fof(wca,axiom,
    ! [Ax,C] :
      ( ( ~ ? [I1] : model(I1,Ax)
        & ? [I2] : model(I2,C)
        & ? [I3] : ~ model(I3,C) )
    <=> status(Ax,C,wca) ) ).

fof(csa,axiom,
    ! [Ax,C] :
      ( ? [I1] :
          ( model(I1,Ax)
          & model(I1,not(C)) )
    <=> status(Ax,C,csa) ) ).

fof(uns,axiom,
    ! [Ax,C] :
      ( ( ! [I1] : model(I1,Ax)
        & ! [I2] : model(I2,not(C)) )
    <=> status(Ax,C,uns) ) ).

fof(noc,axiom,
    ! [Ax,C] :
      ( ( ? [I1] :
            ( model(I1,Ax)
            & model(I1,C) )
        & ? [I2] :
            ( model(I2,Ax)
            & model(I2,not(C)) ) )
    <=> status(Ax,C,noc) ) ).

%------------------------------------------------------------------------------

%----Include SZS success ontology node relationships
%------------------------------------------------------------------------------
% File     : KRS001+1 : TPTP v8.1.0. Bugfixed v5.4.0.
% Domain   : Knowledge Representation
% Axioms   : SZS success ontology node relationships
% Version  : [Sut08] axioms.
% English  :

% Refs     : [Sut08] Sutcliffe (2008), The SZS Ontologies for Automated Rea
% Source   : [Sut08]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   13 (   2 unt;   0 def)
%            Number of atoms       :   36 (   0 equ)
%            Maximal formula atoms :    6 (   2 avg)
%            Number of connectives :   33 (  10   ~;   1   |;  11   &)
%                                         (   6 <=>;   3  =>;   0  <=;   2 <~>)
%            Maximal formula depth :    9 (   6 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    7 (   7 usr;   0 prp; 2-3 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 1-1 aty)
%            Number of variables   :   45 (  23   !;  22   ?)
% SPC      : 

% Comments :
% Bugfixes : v5.4.0 - Added mixed_pair axiom.
%------------------------------------------------------------------------------
fof(mighta,axiom,
    ! [S1,S2] :
      ( ? [Ax,C] :
          ( status(Ax,C,S1)
          & status(Ax,C,S2) )
    <=> mighta(S1,S2) ) ).

fof(isa,axiom,
    ! [S1,S2] :
      ( ! [Ax,C] :
          ( status(Ax,C,S1)
         => status(Ax,C,S2) )
    <=> isa(S1,S2) ) ).

fof(nota,axiom,
    ! [S1,S2] :
      ( ? [Ax,C] :
          ( status(Ax,C,S1)
          & ~ status(Ax,C,S2) )
    <=> nota(S1,S2) ) ).

fof(nevera,axiom,
    ! [S1,S2] :
      ( ! [Ax,C] :
          ( status(Ax,C,S1)
         => ~ status(Ax,C,S2) )
    <=> nevera(S1,S2) ) ).

fof(xora,axiom,
    ! [S1,S2] :
      ( ! [Ax,C] :
          ( status(Ax,C,S1)
        <~> status(Ax,C,S2) )
    <=> xora(S1,S2) ) ).

fof(completeness,axiom,
    ! [I,F] :
      ( model(I,F)
    <~> model(I,not(F)) ) ).

fof(not,axiom,
    ! [I,F] :
      ( model(I,F)
    <=> ~ model(I,not(F)) ) ).

fof(tautology,axiom,
    ? [F] :
    ! [I] : model(I,F) ).

fof(satisfiable,axiom,
    ? [F] :
      ( ? [I1] : model(I1,F)
      & ? [I2] : ~ model(I2,F) ) ).

fof(contradiction,axiom,
    ? [F] :
    ! [I] : ~ model(I,F) ).

%----There exist axiom-conjecture pairs for which some interpretations make 
%----both true and some interpretations make neither true.
fof(sat_non_taut_pair,axiom,
    ? [Ax,C] :
      ( ? [I1] :
          ( model(I1,Ax)
          & model(I1,C) )
      & ? [I2] :
          ( ~ model(I2,Ax)
          | ~ model(I2,C) ) ) ).

%----There exist axiom conjecture pairs for which some interpretations make 
%----the axioms true, every interpretation that makes the axioms true makes
%----the conjecture true, some interpretations make only the conjecture true, 
%----and some interpretations don't make the conjecture true.
fof(mixed_pair,axiom,
    ? [Ax,C] :
      ( ? [I1] : model(I1,Ax)
      & ! [I2] :
          ( model(I2,Ax)
         => model(I2,C) )
      & ? [I3] :
          ( ~ model(I3,Ax)
          & model(I3,C) )
      & ? [I4] : ~ model(I4,C) ) ).

%----There exist satisfiable axioms that do not imply a satisfiable conjecture
fof(non_thm_spt,axiom,
    ? [I1,Ax,C] :
      ( model(I1,Ax)
      & ~ model(I1,C)
      & ? [I2] : model(I2,C) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(nota_esa_thm,conjecture,
    nota(esa,thm) ).

%------------------------------------------------------------------------------
