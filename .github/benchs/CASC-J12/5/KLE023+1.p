include('Axioms/KLE001+0.ax').
include('Axioms/KLE001+1.ax').
fof(goals,conjecture,
    ! [X0,X1,X2] :
      ( ( addition(multiplication(X1,X0),multiplication(X0,X2)) = multiplication(X0,X2)
       => addition(multiplication(X0,c(X2)),multiplication(c(X1),X0)) = multiplication(c(X1),X0) )
     <= ( test(X1)
        & test(X2) ) ) ).

