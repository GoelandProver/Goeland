%------------------------------------------------------------------------------
% File     : SET649+3 : TPTP v7.4.0. Released v2.2.0.
% Domain   : Set Theory (Relations)
% Problem  : Domain R a subset of X & range R a subset of Y => R is (X to Y)
% Version  : [Wor90] axioms : Reduced > Incomplete.
% English  : If the domain of a relation R from X to Y is a subset of X and
%            the range of R is a subset of Y, R is a relation from X to Y.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Wor90] Woronowicz (1990), Relations Defined on Sets
% Source   : [ILF]
% Names    : RELSET_1 (11) [Wor90]

% Status   : Theorem
% Rating   : 0.41 v7.4.0, 0.40 v7.3.0, 0.45 v7.2.0, 0.41 v7.1.0, 0.43 v7.0.0, 0.40 v6.4.0, 0.46 v6.3.0, 0.42 v6.2.0, 0.44 v6.1.0, 0.57 v6.0.0, 0.52 v5.5.0, 0.48 v5.4.0, 0.50 v5.3.0, 0.52 v5.2.0, 0.35 v5.1.0, 0.33 v5.0.0, 0.42 v4.1.0, 0.48 v4.0.0, 0.50 v3.5.0, 0.47 v3.3.0, 0.36 v3.2.0, 0.45 v3.1.0, 0.33 v2.6.0, 0.29 v2.5.0, 0.38 v2.4.0, 0.50 v2.3.0, 0.67 v2.2.1
% Syntax   : Number of formulae    :   27 (   2 unit)
%            Number of atoms       :  105 (   1 equality)
%            Maximal formula depth :   11 (   6 average)
%            Number of connectives :   82 (   4 ~  ;   0  |;  13  &)
%                                         (   9 <=>;  56 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :   10 (   2 constant; 0-2 arity)
%            Number of variables   :   59 (   0 singleton;  51 !;   8 ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%---- line(boole - th(29),1909428)
fof(p1,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,set_type)
               => ( ( subset(B,C)
                    & subset(C,D) )
                 => subset(B,D) ) ) ) ) )).

%---- line(relat_1 - th(21),1917997)
fof(p2,axiom,
    ( ! [B] :
        ( ilf_type(B,binary_relation_type)
       => subset(B,cross_product(domain_of(B),range_of(B))) ) )).

%---- line(zfmisc_1 - th(119),1905457)
fof(p3,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,set_type)
               => ! [E] :
                    ( ilf_type(E,set_type)
                   => ( ( subset(B,C)
                        & subset(D,E) )
                     => subset(cross_product(B,D),cross_product(C,E)) ) ) ) ) ) )).

%---- line(relset_1 - df(1),1916080)
fof(p4,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ( ! [D] :
                  ( ilf_type(D,subset_type(cross_product(B,C)))
                 => ilf_type(D,relation_type(B,C)) )
              & ! [E] :
                  ( ilf_type(E,relation_type(B,C))
                 => ilf_type(E,subset_type(cross_product(B,C))) ) ) ) ) )).

%---- type_nonempty(line(relset_1 - df(1),1916080))
fof(p5,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ? [D] : ilf_type(D,relation_type(C,B)) ) ) )).

%---- line(relat_1 - df(4),1917872)
fof(p6,axiom,
    ( ! [B] :
        ( ilf_type(B,binary_relation_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ( member(C,domain_of(B))
            <=> ? [D] :
                  ( ilf_type(D,set_type)
                  & member(ordered_pair(C,D),B) ) ) ) ) )).

%---- declaration(line(relat_1 - df(4),1917872))
fof(p7,axiom,
    ( ! [B] :
        ( ilf_type(B,binary_relation_type)
       => ilf_type(domain_of(B),set_type) ) )).

%---- line(relat_1 - df(5),1917958)
fof(p8,axiom,
    ( ! [B] :
        ( ilf_type(B,binary_relation_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ( member(C,range_of(B))
            <=> ? [D] :
                  ( ilf_type(D,set_type)
                  & member(ordered_pair(D,C),B) ) ) ) ) )).

%---- declaration(line(relat_1 - df(5),1917958))
fof(p9,axiom,
    ( ! [B] :
        ( ilf_type(B,binary_relation_type)
       => ilf_type(range_of(B),set_type) ) )).

%---- line(relat_1 - axiom79,1917641)
fof(p10,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ( ilf_type(B,binary_relation_type)
        <=> ( relation_like(B)
            & ilf_type(B,set_type) ) ) ) )).

%---- type_nonempty(line(relat_1 - axiom79,1917641))
fof(p11,axiom,
    ( ? [B] : ilf_type(B,binary_relation_type) )).

%---- line(tarski - df(3),1832749)
fof(p12,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ( subset(B,C)
            <=> ! [D] :
                  ( ilf_type(D,set_type)
                 => ( member(D,B)
                   => member(D,C) ) ) ) ) ) )).

%---- declaration(op(cross_product,2,function))
fof(p13,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ilf_type(cross_product(B,C),set_type) ) ) )).

%---- declaration(op(ordered_pair,2,function))
fof(p14,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ilf_type(ordered_pair(B,C),set_type) ) ) )).

%---- line(hidden - axiom80,1832648)
fof(p15,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ( ilf_type(C,subset_type(B))
            <=> ilf_type(C,member_type(power_set(B))) ) ) ) )).

%---- type_nonempty(line(hidden - axiom80,1832648))
fof(p16,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ? [C] : ilf_type(C,subset_type(B)) ) )).

%---- property(reflexivity,op(subset,2,predicate))
fof(p17,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => subset(B,B) ) )).

%---- line(relat_1 - df(1),1917627)
fof(p18,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ( relation_like(B)
        <=> ! [C] :
              ( ilf_type(C,set_type)
             => ( member(C,B)
               => ? [D] :
                    ( ilf_type(D,set_type)
                    & ? [E] :
                        ( ilf_type(E,set_type)
                        & C = ordered_pair(D,E) ) ) ) ) ) ) )).

%---- conditional_cluster(axiom83,relation_like)
fof(p19,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,subset_type(cross_product(B,C)))
               => relation_like(D) ) ) ) )).

%---- line(hidden - axiom84,1832644)
fof(p20,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ( member(B,power_set(C))
            <=> ! [D] :
                  ( ilf_type(D,set_type)
                 => ( member(D,B)
                   => member(D,C) ) ) ) ) ) )).

%---- declaration(line(hidden - axiom84,1832644))
fof(p21,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ( ~ empty(power_set(B))
          & ilf_type(power_set(B),set_type) ) ) )).

%---- line(hidden - axiom85,1832640)
fof(p22,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ( ~ empty(C)
              & ilf_type(C,set_type) )
           => ( ilf_type(B,member_type(C))
            <=> member(B,C) ) ) ) )).

%---- type_nonempty(line(hidden - axiom85,1832640))
fof(p23,axiom,
    ( ! [B] :
        ( ( ~ empty(B)
          & ilf_type(B,set_type) )
       => ? [C] : ilf_type(C,member_type(B)) ) )).

%---- line(hidden - axiom86,1832628)
fof(p24,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ( empty(B)
        <=> ! [C] :
              ( ilf_type(C,set_type)
             => ~ member(C,B) ) ) ) )).

%---- conditional_cluster(axiom87,empty)
fof(p25,axiom,
    ( ! [B] :
        ( ( empty(B)
          & ilf_type(B,set_type) )
       => relation_like(B) ) )).

%---- declaration(set)
fof(p26,axiom,
    ( ! [B] : ilf_type(B,set_type) )).

%---- line(relset_1 - th(11),1916178)
fof(prove_relset_1_11,conjecture,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,binary_relation_type)
               => ( ( subset(domain_of(D),B)
                    & subset(range_of(D),C) )
                 => ilf_type(D,relation_type(B,C)) ) ) ) ) )).

%------------------------------------------------------------------------------
