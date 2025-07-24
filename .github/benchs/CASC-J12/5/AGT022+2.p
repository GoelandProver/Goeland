include('Axioms/AGT001+0.ax').
include('Axioms/AGT001+1.ax').
include('Axioms/AGT001+2.ax').
include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
fof(query_22,conjecture,
    ? [X,Y] : ~ accept_population(X,native,Y) ).

