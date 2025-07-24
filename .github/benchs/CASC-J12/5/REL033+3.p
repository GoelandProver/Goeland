include('Axioms/REL001+0.ax').
include('Axioms/REL001+1.ax').
fof(goals,conjecture,
    ! [X0,X1,X2] :
      ( composition(X0,top) = X0
     => composition(meet(X0,X1),X2) = meet(X0,composition(X1,X2)) ) ).

