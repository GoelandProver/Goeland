include('Axioms/KLE002+0.ax').
include('Axioms/KLE001+1.ax').
fof(goals,conjecture,
    ! [X0,X1,X2] :
      ( ( test(X1)
        & leq(multiplication(multiplication(multiplication(X2,X1),X0),c(X2)),zero)
        & test(X2) )
     => leq(multiplication(multiplication(multiplication(X2,star(multiplication(X1,X0))),c(X1)),c(X2)),zero) ) ).

