%--------------------------------------------------------------------------
% File     : SET682+3 : TPTP v7.4.0. Released v2.2.0.
% Domain   : Set Theory (Relations)
% Problem  : !x in D : x in domain of R (X to Y) ? y in E : y in range of R
% Version  : [Wor90] axioms : Reduced > Incomplete.
% English  : For every element x in D such that x is in the domain of a
%            relation R from X to Y there exists an element y in E such that
%            y is in the range of R.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Wor90] Woronowicz (1990), Relations Defined on Sets
% Source   : [ILF]
% Names    : RELSET_1 (49) [Wor90]

% Status   : Theorem
% Rating   : 0.44 v7.4.0, 0.37 v7.3.0, 0.45 v7.2.0, 0.41 v7.1.0, 0.35 v7.0.0, 0.30 v6.4.0, 0.35 v6.3.0, 0.38 v6.2.0, 0.40 v6.1.0, 0.37 v6.0.0, 0.35 v5.5.0, 0.30 v5.4.0, 0.32 v5.3.0, 0.37 v5.2.0, 0.20 v5.1.0, 0.19 v5.0.0, 0.33 v4.1.0, 0.35 v4.0.0, 0.33 v3.7.0, 0.30 v3.5.0, 0.26 v3.3.0, 0.21 v3.2.0, 0.18 v3.1.0, 0.22 v2.7.0, 0.50 v2.6.0, 0.29 v2.5.0, 0.25 v2.4.0, 0.25 v2.3.0, 0.33 v2.2.1
% Syntax   : Number of formulae    :   25 (   2 unit)
%            Number of atoms       :   96 (   3 equality)
%            Maximal formula depth :   12 (   6 average)
%            Number of connectives :   77 (   6 ~  ;   0  |;  12  &)
%                                         (   6 <=>;  53 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   0 propositional; 1-2 arity)
%            Number of functors    :   12 (   2 constant; 0-3 arity)
%            Number of variables   :   58 (   0 singleton;  50 !;   8 ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%---- line(relat_1 - th(18),1917973)
fof(p1,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,binary_relation_type)
           => ( member(B,domain_of(C))
             => ? [D] :
                  ( ilf_type(D,set_type)
                  & member(D,range_of(C)) ) ) ) ) )).

%---- line(relset_1 - df(1),1916080)
fof(p2,axiom,
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
fof(p3,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ? [D] : ilf_type(D,relation_type(C,B)) ) ) )).

%---- line(hidden - axiom628,1832640)
fof(p4,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ( ~ empty(C)
              & ilf_type(C,set_type) )
           => ( ilf_type(B,member_type(C))
            <=> member(B,C) ) ) ) )).

%---- type_nonempty(line(hidden - axiom628,1832640))
fof(p5,axiom,
    ( ! [B] :
        ( ( ~ empty(B)
          & ilf_type(B,set_type) )
       => ? [C] : ilf_type(C,member_type(B)) ) )).

%---- line(hidden - axiom630,1832628)
fof(p6,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ( empty(B)
        <=> ! [C] :
              ( ilf_type(C,set_type)
             => ~ member(C,B) ) ) ) )).

%---- declaration(op(domain_of,1,function))
fof(p7,axiom,
    ( ! [B] :
        ( ilf_type(B,binary_relation_type)
       => ilf_type(domain_of(B),set_type) ) )).

%---- declaration(op(cross_product,2,function))
fof(p8,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ilf_type(cross_product(B,C),set_type) ) ) )).

%---- declaration(op(range_of,1,function))
fof(p9,axiom,
    ( ! [B] :
        ( ilf_type(B,binary_relation_type)
       => ilf_type(range_of(B),set_type) ) )).

%---- line(relat_1 - axiom631,1917641)
fof(p10,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ( ilf_type(B,binary_relation_type)
        <=> ( relation_like(B)
            & ilf_type(B,set_type) ) ) ) )).

%---- type_nonempty(line(relat_1 - axiom631,1917641))
fof(p11,axiom,
    ( ? [B] : ilf_type(B,binary_relation_type) )).

%---- line(hidden - axiom632,1832648)
fof(p12,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ( ilf_type(C,subset_type(B))
            <=> ilf_type(C,member_type(power_set(B))) ) ) ) )).

%---- type_nonempty(line(hidden - axiom632,1832648))
fof(p13,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ? [C] : ilf_type(C,subset_type(B)) ) )).

%---- line(hidden - axiom634,1832644)
fof(p14,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ( member(B,power_set(C))
            <=> ! [D] :
                  ( ilf_type(D,set_type)
                 => ( member(D,B)
                   => member(D,C) ) ) ) ) ) )).

%---- declaration(line(hidden - axiom634,1832644))
fof(p15,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ( ~ empty(power_set(B))
          & ilf_type(power_set(B),set_type) ) ) )).

%---- line(relat_1 - df(1),1917627)
fof(p16,axiom,
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

%---- conditional_cluster(axiom635,relation_like)
fof(p17,axiom,
    ( ! [B] :
        ( ( empty(B)
          & ilf_type(B,set_type) )
       => relation_like(B) ) )).

%---- conditional_cluster(axiom636,relation_like)
fof(p18,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,subset_type(cross_product(B,C)))
               => relation_like(D) ) ) ) )).

%---- declaration(op(ordered_pair,2,function))
fof(p19,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ilf_type(ordered_pair(B,C),set_type) ) ) )).

%---- line(relset_1 - axiom640,1916330)
fof(p20,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,relation_type(B,C))
               => domain(B,C,D) = domain_of(D) ) ) ) )).

%---- declaration(line(relset_1 - axiom640,1916330))
fof(p21,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,relation_type(B,C))
               => ilf_type(domain(B,C,D),subset_type(B)) ) ) ) )).

%---- line(relset_1 - axiom641,1916334)
fof(p22,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,relation_type(B,C))
               => range(B,C,D) = range_of(D) ) ) ) )).

%---- declaration(line(relset_1 - axiom641,1916334))
fof(p23,axiom,
    ( ! [B] :
        ( ilf_type(B,set_type)
       => ! [C] :
            ( ilf_type(C,set_type)
           => ! [D] :
                ( ilf_type(D,relation_type(B,C))
               => ilf_type(range(B,C,D),subset_type(C)) ) ) ) )).

%---- declaration(set)
fof(p24,axiom,
    ( ! [B] : ilf_type(B,set_type) )).

%---- line(relset_1 - th(49),1916922)
fof(prove_relset_1_49,conjecture,
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
                     => ? [F] :
                          ( ilf_type(F,member_type(C))
                          & member(F,range(B,C,D)) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
