include('Axioms/REL001+0.ax').
fof(goals,conjecture,
    ! [X0,X1,X2] : meet(composition(X0,X1),composition(X0,X2)) = join(composition(X0,meet(X1,X2)),meet(composition(X0,X1),composition(X0,X2))) ).

