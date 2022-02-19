%--------------------------------------------------------------------------
% File     : SET667+3 : TPTP v7.4.0. Released v2.2.0.
% Domain   : Set Theory (Relations)
% Problem  : Id on A subset of R => A subset domain R & A subset range R
% Version  : [Wor90] axioms : Reduced > Incomplete.
% English  : If the identity relation on A is a subset of a relation R from
%            X to Y then A is a subset of the domain of R and A is a subset
%            of the range of R.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Wor90] Woronowicz (1990), Relations Defined on Sets
% Source   : [ILF]
% Names    : RELSET_1 (30) [Wor90]

% Status   : Theorem
% Rating   : 0.53 v7.4.0, 0.47 v7.3.0, 0.55 v7.2.0, 0.52 v7.1.0, 0.48 v7.0.0, 0.43 v6.4.0, 0.42 v6.3.0, 0.46 v6.2.0, 0.52 v6.1.0, 0.60 v6.0.0, 0.65 v5.5.0, 0.74 v5.4.0, 0.71 v5.3.0, 0.70 v5.2.0, 0.55 v5.1.0, 0.57 v5.0.0, 0.62 v4.1.0, 0.65 v4.0.0, 0.58 v3.7.0, 0.60 v3.5.0, 0.53 v3.3.0, 0.57 v3.2.0, 0.55 v3.1.0, 0.67 v2.7.0, 0.83 v2.6.0, 0.57 v2.5.0, 0.62 v2.4.0, 0.75 v2.3.0, 0.67 v2.2.1
% Syntax   : Number of formulae    :   32 (   2 unit)
%            Number of atoms       :  124 (   4 equality)
%            Maximal formula depth :   11 (   6 average)
%            Number of connectives :   96 (   4 ~  ;   0  |;  11  &)
%                                         (  10 <=>;  71 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :   13 (   2 constant; 0-3 arity)
%            Number of variables   :   72 (   0 singleton;  66 !;   6 ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%---- line(relat_1 - th(20),1917986)
fof(p1,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,binary_relation_type)
               => ( member(ordered_pair(B,C),D)
                 => ( member(B,domain_of(D))
                    & member(C,range_of(D)) ) ) ) ) ) )).

%---- line(relat_1 - th(70),1918880)
fof(p2,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ( member(C,B)
            <=> member(ordered_pair(C,C),identity_relation_of(B)) ) ) ) )).

%---- line(relat_1 - df(10),1918876)
fof(p3,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,set_type)
               => ( member(ordered_pair(C,D),identity_relation_of(B))
                <=> ( member(C,B)
                    & C = D ) ) ) ) ) )).

%---- declaration(line(relat_1 - df(10),1918876))
fof(p4,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ilf_type(identity_relation_of(B),binary_relation_type) ) )).

%---- line(relset_1 - df(1),1916080)
fof(p5,axiom,
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
fof(p6,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ? [D] : ilf_type(D,relation_type(C,B)) ) ) )).

%---- line(tarski - df(3),1832749)
fof(p7,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ( subset(B,C)
            <=> ! [D] :
                  ( ilf_type(D,set_type)
                 => ( member(D,B)
                   => member(D,C) ) ) ) ) ) )).

%---- line(relat_1 - df(3),1917829)
fof(p8,axiom,
    ( ! [B] :
        ( ilf_type(B,binary_relation_type)
       => ! [C] :
            ( ilf_type(C,binary_relation_type)
           => ( subset(B,C)
            <=> ! [D] :
                  ( ilf_type(D,set_type)
                 => ! [E] :
                      ( ilf_type(E,set_type)
                     => ( member(ordered_pair(D,E),B)
                       => member(ordered_pair(D,E),C) ) ) ) ) ) ) )).

%---- declaration(op(domain_of,1,function))
fof(p9,axiom,
    ( ! [B] :
        ( ilf_type(B,binary_relation_type)
       => ilf_type(domain_of(B),set_type) ) )).

%---- declaration(op(cross_product,2,function))
fof(p10,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ilf_type(cross_product(B,C),set_type) ) ) )).

%---- declaration(op(range_of,1,function))
fof(p11,axiom,
    ( ! [B] :
        ( ilf_type(B,binary_relation_type)
       => ilf_type(range_of(B),set_type) ) )).

%---- declaration(op(ordered_pair,2,function))
fof(p12,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ilf_type(ordered_pair(B,C),set_type) ) ) )).

%---- line(relat_1 - axiom318,1917641)
fof(p13,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ( ilf_type(B,binary_relation_type)
        <=> ( relation_like(B)
            & ilf_type(B,set_type) ) ) ) )).

%---- type_nonempty(line(relat_1 - axiom318,1917641))
fof(p14,axiom,
    ( ? [B] : ilf_type(B,binary_relation_type) )).

%---- line(hidden - axiom319,1832648)
fof(p15,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ( ilf_type(C,subset_type(B))
            <=> ilf_type(C,member_type(power_set(B))) ) ) ) )).

%---- type_nonempty(line(hidden - axiom319,1832648))
fof(p16,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ? [C] : ilf_type(C,subset_type(B)) ) )).

%---- property(reflexivity,op(subset,2,predicate))
fof(p17,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => subset(B,B) ) )).

%---- property(reflexivity,op(subset,2,predicate))
fof(p18,axiom,
    ( ! [B] :
        ( ilf_type(B,binary_relation_type)
       => subset(B,B) ) )).

%---- line(hidden - axiom321,1832644)
fof(p19,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ( member(B,power_set(C))
            <=> ! [D] :
                  ( ilf_type(D,set_type)
                 => ( member(D,B)
                   => member(D,C) ) ) ) ) ) )).

%---- declaration(line(hidden - axiom321,1832644))
fof(p20,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ( ~ empty(power_set(B))
          & ilf_type(power_set(B),set_type) ) ) )).

%---- line(hidden - axiom322,1832640)
fof(p21,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ( ~ empty(C)
              & ilf_type(C,set_type) )
           => ( ilf_type(B,member_type(C))
            <=> member(B,C) ) ) ) )).

%---- type_nonempty(line(hidden - axiom322,1832640))
fof(p22,axiom,
    ( ! [B] :
        ( ( ~ empty(B)
          & ilf_type(B,set_type) )
       => ? [C] : ilf_type(C,member_type(B)) ) )).

%---- line(relat_1 - df(1),1917627)
fof(p23,axiom,
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

%---- conditional_cluster(axiom324,relation_like)
fof(p24,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,subset_type(cross_product(B,C)))
               => relation_like(D) ) ) ) )).

%---- line(hidden - axiom325,1832628)
fof(p25,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ( empty(B)
        <=> ! [C] :
              ( ilf_type(C,set_type)
             => ~ member(C,B) ) ) ) )).

%---- conditional_cluster(axiom326,empty)
fof(p26,axiom,
    ( ! [B] :
        ( ( empty(B)
          & ilf_type(B,set_type) )
       => relation_like(B) ) )).

%---- line(relset_1 - axiom330,1916330)
fof(p27,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,relation_type(B,C))
               => domain(B,C,D) = domain_of(D) ) ) ) )).

%---- declaration(line(relset_1 - axiom330,1916330))
fof(p28,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,relation_type(B,C))
               => ilf_type(domain(B,C,D),subset_type(B)) ) ) ) )).

%---- line(relset_1 - axiom331,1916334)
fof(p29,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,relation_type(B,C))
               => range(B,C,D) = range_of(D) ) ) ) )).

%---- declaration(line(relset_1 - axiom331,1916334))
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

%---- line(relset_1 - th(30),1916572)
fof(prove_relset_1_30,conjecture,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,set_type)
               => ! [E] :
                    ( ilf_type(E,relation_type(B,C))
                   => ( subset(identity_relation_of(D),E)
                     => ( subset(D,domain(B,C,E))
                        & subset(D,range(B,C,E)) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
