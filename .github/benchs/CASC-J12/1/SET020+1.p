include('Axioms/SET005+0.ax').
fof(unique_1st_and_2nd_in_pair_of_sets1,conjecture,
    ! [U,V,X] :
      ( ( first(X) = U
        & second(X) = V )
     <= ( member(V,universal_class)
        & X = ordered_pair(U,V)
        & member(U,universal_class) ) ) ).

