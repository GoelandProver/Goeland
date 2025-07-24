include('Axioms/REL001+0.ax').
fof(goals,conjecture,
    ! [X0,X1,X2] :
      ( join(composition(meet(X1,converse(X0)),X2),composition(meet(X1,converse(X0)),meet(X0,X2))) = composition(meet(X1,converse(X0)),meet(X0,X2))
     <= composition(X0,top) = X0 ) ).

