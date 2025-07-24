include('Axioms/KLE001+0.ax').
include('Axioms/KLE001+1.ax').
fof(goals,conjecture,
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( leq(addition(multiplication(X4,addition(multiplication(X5,X0),multiplication(c(X5),X1))),multiplication(c(X4),addition(multiplication(X5,X2),multiplication(c(X5),X3)))),addition(multiplication(X5,addition(multiplication(X4,X0),multiplication(c(X4),X2))),multiplication(c(X5),addition(multiplication(X4,X1),multiplication(c(X4),X3)))))
        & leq(addition(multiplication(X5,addition(multiplication(X4,X0),multiplication(c(X4),X2))),multiplication(c(X5),addition(multiplication(X4,X1),multiplication(c(X4),X3)))),addition(multiplication(X4,addition(multiplication(X5,X0),multiplication(c(X5),X1))),multiplication(c(X4),addition(multiplication(X5,X2),multiplication(c(X5),X3))))) )
     <= ( test(X4)
        & test(X5) ) ) ).

