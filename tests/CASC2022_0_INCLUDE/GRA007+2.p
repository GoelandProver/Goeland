%--------------------------------------------------------------------------
% File     : GRA007+2 : TPTP v8.1.0. Bugfixed v3.2.0.
% Domain   : Graph Theory
% Problem  : Maximal shortest path length in terms of triangles
% Version  : Augmented > Especial.
% English  : In a complete graph with a shortest path P from V1 to V2 with
%            edges E1 and E2, E1 preceding E2, there's an edge from the
%            head of E2 to the tail of E1 (a back edge).

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.50 v8.1.0, 0.56 v7.4.0, 0.37 v7.3.0, 0.48 v7.2.0, 0.45 v7.1.0, 0.48 v7.0.0, 0.50 v6.2.0, 0.52 v6.1.0, 0.63 v6.0.0, 0.57 v5.5.0, 0.67 v5.4.0, 0.64 v5.3.0, 0.74 v5.2.0, 0.65 v5.1.0, 0.67 v5.0.0, 0.62 v4.1.0, 0.61 v4.0.1, 0.74 v4.0.0, 0.71 v3.7.0, 0.70 v3.5.0, 0.74 v3.4.0, 0.68 v3.3.0, 0.64 v3.2.0

% Syntax   : Number of formulae    :   19 (   1 unt;   0 def)
%            Number of atoms       :  101 (  28 equ)
%            Maximal formula atoms :    9 (   5 avg)
%            Number of connectives :   89 (   7   ~;   3   |;  52   &)
%                                         (   3 <=>;  19  =>;   2  <=;   3 <~>)
%            Maximal formula depth :   13 (   9 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   12 (  11 usr;   1 prp; 0-3 aty)
%            Number of functors    :   12 (  12 usr;   6 con; 0-2 aty)
%            Number of variables   :   77 (  65   !;  12   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
% Bugfixes : v3.2.0 - Bugfix to GRA001+0.ax
%--------------------------------------------------------------------------
%----Include axioms for directed graphs and paths
%------------------------------------------------------------------------------
% File     : GRA001+0 : TPTP v8.1.0. Bugfixed v3.2.0.
% Domain   : Graph Theory
% Axioms   : Directed graphs and paths
% Version  : [TPTP] axioms : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   12 (   0 unt;   0 def)
%            Number of atoms       :   72 (  21 equ)
%            Maximal formula atoms :    9 (   6 avg)
%            Number of connectives :   66 (   6   ~;   3   |;  38   &)
%                                         (   2 <=>;  12  =>;   2  <=;   3 <~>)
%            Maximal formula depth :   13 (  10 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   11 (  10 usr;   1 prp; 0-3 aty)
%            Number of functors    :    5 (   5 usr;   1 con; 0-2 aty)
%            Number of variables   :   48 (  39   !;   9   ?)
% SPC      : 

% Comments :
% Bugfixes : v3.2.0 - Added formula edge_ends_are_vertices.
%------------------------------------------------------------------------------
fof(no_loops,axiom,
    ! [E] :
      ( edge(E)
     => head_of(E) != tail_of(E) ) ).

fof(edge_ends_are_vertices,axiom,
    ! [E] :
      ( edge(E)
     => ( vertex(head_of(E))
        & vertex(tail_of(E)) ) ) ).

fof(complete_properties,axiom,
    ( complete
   => ! [V1,V2] :
        ( ( vertex(V1)
          & vertex(V2)
          & V1 != V2 )
       => ? [E] :
            ( edge(E)
            & ( ( V1 = head_of(E)
                & V2 = tail_of(E) )
            <~> ( V2 = head_of(E)
                & V1 = tail_of(E) ) ) ) ) ) ).

fof(path_defn,axiom,
    ! [V1,V2,P] :
      ( path(V1,V2,P)
     <= ( vertex(V1)
        & vertex(V2)
        & ? [E] :
            ( edge(E)
            & V1 = tail_of(E)
            & ( ( V2 = head_of(E)
                & P = path_cons(E,empty) )
              | ? [TP] :
                  ( path(head_of(E),V2,TP)
                  & P = path_cons(E,TP) ) ) ) ) ) ).

fof(path_properties,axiom,
    ! [V1,V2,P] :
      ( path(V1,V2,P)
     => ( vertex(V1)
        & vertex(V2)
        & ? [E] :
            ( edge(E)
            & V1 = tail_of(E)
            & ( ( V2 = head_of(E)
                & P = path_cons(E,empty) )
            <~> ? [TP] :
                  ( path(head_of(E),V2,TP)
                  & P = path_cons(E,TP) ) ) ) ) ) ).

fof(on_path_properties,axiom,
    ! [V1,V2,P,E] :
      ( ( path(V1,V2,P)
        & on_path(E,P) )
     => ( edge(E)
        & in_path(head_of(E),P)
        & in_path(tail_of(E),P) ) ) ).

fof(in_path_properties,axiom,
    ! [V1,V2,P,V] :
      ( ( path(V1,V2,P)
        & in_path(V,P) )
     => ( vertex(V)
        & ? [E] :
            ( on_path(E,P)
            & ( V = head_of(E)
              | V = tail_of(E) ) ) ) ) ).

fof(sequential_defn,axiom,
    ! [E1,E2] :
      ( sequential(E1,E2)
    <=> ( edge(E1)
        & edge(E2)
        & E1 != E2
        & head_of(E1) = tail_of(E2) ) ) ).

fof(precedes_defn,axiom,
    ! [P,V1,V2] :
      ( path(V1,V2,P)
     => ! [E1,E2] :
          ( precedes(E1,E2,P)
         <= ( on_path(E1,P)
            & on_path(E2,P)
            & ( sequential(E1,E2)
              | ? [E3] :
                  ( sequential(E1,E3)
                  & precedes(E3,E2,P) ) ) ) ) ) ).

fof(precedes_properties,axiom,
    ! [P,V1,V2] :
      ( path(V1,V2,P)
     => ! [E1,E2] :
          ( precedes(E1,E2,P)
         => ( on_path(E1,P)
            & on_path(E2,P)
            & ( sequential(E1,E2)
            <~> ? [E3] :
                  ( sequential(E1,E3)
                  & precedes(E3,E2,P) ) ) ) ) ) ).

fof(shortest_path_defn,axiom,
    ! [V1,V2,SP] :
      ( shortest_path(V1,V2,SP)
    <=> ( path(V1,V2,SP)
        & V1 != V2
        & ! [P] :
            ( path(V1,V2,P)
           => less_or_equal(length_of(SP),length_of(P)) ) ) ) ).

fof(shortest_path_properties,axiom,
    ! [V1,V2,E1,E2,P] :
      ( ( shortest_path(V1,V2,P)
        & precedes(E1,E2,P) )
     => ( ~ ? [E3] :
              ( tail_of(E3) = tail_of(E1)
              & head_of(E3) = head_of(E2) )
        & ~ precedes(E2,E1,P) ) ) ).

%------------------------------------------------------------------------------

%--------------------------------------------------------------------------
fof(triangle_defn,axiom,
    ! [E1,E2,E3] :
      ( triangle(E1,E2,E3)
    <=> ( edge(E1)
        & edge(E2)
        & edge(E3)
        & sequential(E1,E2)
        & sequential(E2,E3)
        & sequential(E3,E1) ) ) ).

fof(length_defn,axiom,
    ! [V1,V2,P] :
      ( path(V1,V2,P)
     => length_of(P) = number_of_in(edges,P) ) ).

fof(path_length_sequential_pairs,axiom,
    ! [V1,V2,P] :
      ( path(V1,V2,P)
     => number_of_in(sequential_pairs,P) = minus(length_of(P),n1) ) ).

fof(sequential_pairs_and_triangles,axiom,
    ! [P,V1,V2] :
      ( ( path(V1,V2,P)
        & ! [E1,E2] :
            ( ( on_path(E1,P)
              & on_path(E2,P)
              & sequential(E1,E2) )
           => ? [E3] : triangle(E1,E2,E3) ) )
     => number_of_in(sequential_pairs,P) = number_of_in(triangles,P) ) ).

fof(graph_has_them_all,axiom,
    ! [Things,InThese] : less_or_equal(number_of_in(Things,InThese),number_of_in(Things,graph)) ).

fof(no_short_cut_edge,lemma,
    ! [V1,V2,E1,E2,P] :
      ( ( shortest_path(V1,V2,P)
        & precedes(E1,E2,P) )
     => ~ ? [E3] :
            ( edge(E3)
            & tail_of(E3) = tail_of(E1)
            & head_of(E3) = head_of(E2) ) ) ).

fof(back_edge,conjecture,
    ( complete
   => ! [V1,V2,E1,E2,P] :
        ( ( shortest_path(V1,V2,P)
          & precedes(E1,E2,P) )
       => ? [E3] :
            ( edge(E3)
            & tail_of(E3) = head_of(E2)
            & head_of(E3) = tail_of(E1) ) ) ) ).

%--------------------------------------------------------------------------
