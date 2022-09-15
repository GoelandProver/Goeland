%------------------------------------------------------------------------------
% File     : SWB013+2 : TPTP v8.1.0. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Cliques
% Version  : [Sch11] axioms : Reduced > Incomplete.
% English  :

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 013_Cliques [Sch11]

% Status   : Theorem
% Rating   : 0.28 v7.5.0, 0.31 v7.4.0, 0.27 v7.3.0, 0.17 v7.2.0, 0.21 v7.1.0, 0.22 v7.0.0, 0.23 v6.4.0, 0.27 v6.3.0, 0.21 v6.2.0, 0.32 v6.1.0, 0.40 v6.0.0, 0.48 v5.4.0, 0.50 v5.3.0, 0.52 v5.2.0
% Syntax   : Number of formulae    :    9 (   1 unt;   0 def)
%            Number of atoms       :   59 (   1 equ)
%            Maximal formula atoms :   19 (   6 avg)
%            Number of connectives :   50 (   0   ~;   0   |;  37   &)
%                                         (   8 <=>;   5  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   24 (  10 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   4 usr;   0 prp; 1-3 aty)
%            Number of functors    :   21 (  21 usr;  21 con; 0-0 aty)
%            Number of variables   :   36 (  30   !;   6   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(rdfs_cext_def,axiom,
    ! [X,C] :
      ( iext(uri_rdf_type,X,C)
    <=> icext(C,X) ) ).

fof(owl_restrict_somevaluesfrom,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_someValuesFrom,Z,C)
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> ? [Y] :
              ( iext(P,X,Y)
              & icext(C,Y) ) ) ) ).

fof(owl_rdfsext_subclassof,axiom,
    ! [C1,C2] :
      ( iext(uri_rdfs_subClassOf,C1,C2)
    <=> ( ic(C1)
        & ic(C2)
        & ! [X] :
            ( icext(C1,X)
           => icext(C2,X) ) ) ) ).

fof(owl_rdfsext_subpropertyof,axiom,
    ! [P1,P2] :
      ( iext(uri_rdfs_subPropertyOf,P1,P2)
    <=> ( ip(P1)
        & ip(P2)
        & ! [X,Y] :
            ( iext(P1,X,Y)
           => iext(P2,X,Y) ) ) ) ).

fof(owl_eqdis_sameas,axiom,
    ! [X,Y] :
      ( iext(uri_owl_sameAs,X,Y)
    <=> X = Y ) ).

fof(owl_chain_003,axiom,
    ! [P,S1,P1,S2,P2,S3,P3] :
      ( ( iext(uri_rdf_first,S1,P1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,P2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,P3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil) )
     => ( iext(uri_owl_propertyChainAxiom,P,S1)
      <=> ( ip(P)
          & ip(P1)
          & ip(P2)
          & ip(P3)
          & ! [Y0,Y1,Y2,Y3] :
              ( ( iext(P1,Y0,Y1)
                & iext(P2,Y1,Y2)
                & iext(P3,Y2,Y3) )
             => iext(P,Y0,Y3) ) ) ) ) ).

fof(owl_inv,axiom,
    ! [P1,P2] :
      ( iext(uri_owl_inverseOf,P1,P2)
    <=> ( ip(P1)
        & ip(P2)
        & ! [X,Y] :
            ( iext(P1,X,Y)
          <=> iext(P2,Y,X) ) ) ) ).

fof(testcase_conclusion_fullish_013_Cliques,conjecture,
    iext(uri_foaf_knows,uri_ex_alice,uri_ex_bob) ).

fof(testcase_premise_fullish_013_Cliques,axiom,
    ? [BNODE_r,BNODE_i,BNODE_l1,BNODE_l2,BNODE_l3] :
      ( iext(uri_rdf_type,uri_ex_Clique,uri_owl_Class)
      & iext(uri_rdfs_subPropertyOf,uri_ex_sameCliqueAs,uri_owl_sameAs)
      & iext(uri_rdfs_range,uri_ex_sameCliqueAs,uri_ex_Clique)
      & iext(uri_rdfs_subClassOf,uri_ex_Clique,BNODE_r)
      & iext(uri_rdf_type,BNODE_r,uri_owl_Restriction)
      & iext(uri_owl_onProperty,BNODE_r,uri_ex_sameCliqueAs)
      & iext(uri_owl_someValuesFrom,BNODE_r,uri_ex_Clique)
      & iext(uri_rdf_type,uri_foaf_knows,uri_owl_ObjectProperty)
      & iext(uri_owl_propertyChainAxiom,uri_foaf_knows,BNODE_l1)
      & iext(uri_rdf_first,BNODE_l1,uri_rdf_type)
      & iext(uri_rdf_rest,BNODE_l1,BNODE_l2)
      & iext(uri_rdf_first,BNODE_l2,uri_ex_sameCliqueAs)
      & iext(uri_rdf_rest,BNODE_l2,BNODE_l3)
      & iext(uri_rdf_first,BNODE_l3,BNODE_i)
      & iext(uri_rdf_rest,BNODE_l3,uri_rdf_nil)
      & iext(uri_owl_inverseOf,BNODE_i,uri_rdf_type)
      & iext(uri_rdf_type,uri_ex_JoesGang,uri_ex_Clique)
      & iext(uri_rdf_type,uri_ex_alice,uri_ex_JoesGang)
      & iext(uri_rdf_type,uri_ex_bob,uri_ex_JoesGang) ) ).

%------------------------------------------------------------------------------
