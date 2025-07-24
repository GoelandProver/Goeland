include('Axioms/SET005+0.ax').
fof(pair_contains_other,conjecture,
    ! [X,Y] : subclass(unordered_pair(X,X),unordered_pair(X,Y)) ).

