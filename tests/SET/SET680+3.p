%------------------------------------------------------------------------------
% File     : SET680+3 : TPTP v7.4.0. Released v2.2.0.
% Domain   : Set Theory (Relations)
% Problem  : !x in D, x the domain of R (X to Y) iff ?y in E : <x,y> in R
% Version  : [Wor90] axioms : Reduced > Incomplete.
% English  : For every element x in D, x is in the domain of a relation R from
%            X to Y iff there exists an element y in E such that <x,y> is in R.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Wor90] Woronowicz (1990), Relations Defined on Sets
% Source   : [ILF]
% Names    : RELSET_1 (47) [Wor90]

% Status   : Theorem
% Rating   : 0.47 v7.4.0, 0.37 v7.3.0, 0.48 v7.2.0, 0.45 v7.1.0, 0.35 v7.0.0, 0.30 v6.4.0, 0.35 v6.3.0, 0.38 v6.2.0, 0.40 v6.0.0, 0.43 v5.5.0, 0.48 v5.4.0, 0.50 v5.3.0, 0.56 v5.2.0, 0.35 v5.1.0, 0.33 v5.0.0, 0.38 v4.1.0, 0.43 v4.0.0, 0.42 v3.7.0, 0.40 v3.5.0, 0.37 v3.4.0, 0.42 v3.3.0, 0.43 v3.2.0, 0.45 v3.1.0, 0.33 v2.7.0, 0.50 v2.6.0, 0.43 v2.5.0, 0.38 v2.4.0, 0.50 v2.3.0, 0.33 v2.2.1
% Syntax   : Number of formulae    :   32 (   2 unit)
%            Number of atoms       :  131 (   7 equality)
%            Maximal formula depth :   13 (   6 average)
%            Number of connectives :  105 (   6 ~  ;   0  |;  14  &)
%                                         (  11 <=>;  74 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   0 propositional; 1-2 arity)
%            Number of functors    :   14 (   2 constant; 0-3 arity)
%            Number of variables   :   79 (   0 singleton;  71 !;   8 ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%---- line(relat_1 - th(12),1917875)
fof(p1,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,binary_relation_type)
           => ( member(B,domain_of(C))
            <=> ? [D] :
                  ( ilf_type(D,set_type)
                  & member(ordered_pair(B,D),C) ) ) ) ) )).

%---- line(relat_1 - th(20),1917986)
fof(p2,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,binary_relation_type)
               => ( member(ordered_pair(B,C),D)
                 => ( member(B,domain_of(D))
                    & member(C,range_of(D)) ) ) ) ) ) )).

%---- line(relset_1 - th(7),1916125)
fof(p3,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,set_type)
               => ! [E] :
                    ( ilf_type(E,set_type)
                   => ! [F] :
                        ( ilf_type(F,relation_type(B,C))
                       => ( member(ordered_pair(D,E),F)
                         => ( member(D,B)
                            & member(E,C) ) ) ) ) ) ) ) )).

%---- line(tarski - df(5),1832760)
fof(p4,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,set_type)
               => ! [E] :
                    ( ilf_type(E,set_type)
                   => ! [F] :
                        ( ilf_type(F,set_type)
                       => ( F = ordered_pair(D,E)
                        <=> F = unordered_pair(unordered_pair(D,E),singleton(D)) ) ) ) ) ) ) )).

%---- declaration(line(tarski - df(5),1832760))
fof(p5,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ilf_type(ordered_pair(B,C),set_type) ) ) )).

%---- line(relset_1 - df(1),1916080)
fof(p6,axiom,
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
fof(p7,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ? [D] : ilf_type(D,relation_type(C,B)) ) ) )).

%---- line(hidden - axiom583,1832640)
fof(p8,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ( ~ empty(C)
              & ilf_type(C,set_type) )
           => ( ilf_type(B,member_type(C))
            <=> member(B,C) ) ) ) )).

%---- type_nonempty(line(hidden - axiom583,1832640))
fof(p9,axiom,
    ( ! [B] :
        ( ( ~ empty(B)
          & ilf_type(B,set_type) )
       => ? [C] : ilf_type(C,member_type(B)) ) )).

%---- line(hidden - axiom585,1832628)
fof(p10,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ( empty(B)
        <=> ! [C] :
              ( ilf_type(C,set_type)
             => ~ member(C,B) ) ) ) )).

%---- declaration(op(domain_of,1,function))
fof(p11,axiom,
    ( ! [B] :
        ( ilf_type(B,binary_relation_type)
       => ilf_type(domain_of(B),set_type) ) )).

%---- declaration(op(singleton,1,function))
fof(p12,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ilf_type(singleton(B),set_type) ) )).

%---- declaration(op(cross_product,2,function))
fof(p13,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ilf_type(cross_product(B,C),set_type) ) ) )).

%---- declaration(op(range_of,1,function))
fof(p14,axiom,
    ( ! [B] :
        ( ilf_type(B,binary_relation_type)
       => ilf_type(range_of(B),set_type) ) )).

%---- declaration(op(unordered_pair,2,function))
fof(p15,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ilf_type(unordered_pair(B,C),set_type) ) ) )).

%---- property(commutativity,op(unordered_pair,2,function))
fof(p16,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => unordered_pair(B,C) = unordered_pair(C,B) ) ) )).

%---- line(relat_1 - axiom586,1917641)
fof(p17,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ( ilf_type(B,binary_relation_type)
        <=> ( relation_like(B)
            & ilf_type(B,set_type) ) ) ) )).

%---- type_nonempty(line(relat_1 - axiom586,1917641))
fof(p18,axiom,
    ( ? [B] : ilf_type(B,binary_relation_type) )).

%---- line(hidden - axiom587,1832648)
fof(p19,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ( ilf_type(C,subset_type(B))
            <=> ilf_type(C,member_type(power_set(B))) ) ) ) )).

%---- type_nonempty(line(hidden - axiom587,1832648))
fof(p20,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ? [C] : ilf_type(C,subset_type(B)) ) )).

%---- line(hidden - axiom588,1832615)
fof(p21,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ( B = C
            <=> ! [D] :
                  ( ilf_type(D,set_type)
                 => ( member(D,B)
                  <=> member(D,C) ) ) ) ) ) )).

%---- line(hidden - axiom590,1832644)
fof(p22,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ( member(B,power_set(C))
            <=> ! [D] :
                  ( ilf_type(D,set_type)
                 => ( member(D,B)
                   => member(D,C) ) ) ) ) ) )).

%---- declaration(line(hidden - axiom590,1832644))
fof(p23,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ( ~ empty(power_set(B))
          & ilf_type(power_set(B),set_type) ) ) )).

%---- line(relat_1 - df(1),1917627)
fof(p24,axiom,
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

%---- conditional_cluster(axiom591,relation_like)
fof(p25,axiom,
    ( ! [B] :
        ( ( empty(B)
          & ilf_type(B,set_type) )
       => relation_like(B) ) )).

%---- conditional_cluster(axiom592,relation_like)
fof(p26,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,subset_type(cross_product(B,C)))
               => relation_like(D) ) ) ) )).

%---- line(relset_1 - axiom596,1916330)
fof(p27,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,relation_type(B,C))
               => domain(B,C,D) = domain_of(D) ) ) ) )).

%---- declaration(line(relset_1 - axiom596,1916330))
fof(p28,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,relation_type(B,C))
               => ilf_type(domain(B,C,D),subset_type(B)) ) ) ) )).

%---- line(relset_1 - axiom597,1916334)
fof(p29,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,relation_type(B,C))
               => range(B,C,D) = range_of(D) ) ) ) )).

%---- declaration(line(relset_1 - axiom597,1916334))
fof(p30,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,relation_type(B,C))
               => ilf_type(range(B,C,D),subset_type(C)) ) ) ) )).

%---- declaration(set)
fof(p31,axiom,
    ( ! [B] : ilf_type(B,set_type) )).

%---- line(relset_1 - th(47),1916882)
fof(prove_relset_1_47,conjecture,
    ( ! [B] :
        ( ( ~ empty(B)
          & ilf_type(B,set_type) )
       => ! [C] :
            ( ( ~ empty(C)
              & ilf_type(C,set_type) )
           => ! [D] :
                ( ilf_type(D,relation_type(B,C))
               => ! [E] :
                    ( ilf_type(E,member_type(B))
                   => ( member(E,domain(B,C,D))
                    <=> ? [F] :
                          ( ilf_type(F,member_type(C))
                          & member(ordered_pair(E,F),D) ) ) ) ) ) ) )).

%------------------------------------------------------------------------------
