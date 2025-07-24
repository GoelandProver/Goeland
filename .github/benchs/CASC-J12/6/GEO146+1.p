include('Axioms/GEO004+0.ax').
include('Axioms/GEO004+1.ax').
include('Axioms/GEO004+2.ax').
include('Axioms/GEO004+3.ax').
fof(t12,conjecture,
    ! [X,Y,P] :
      ( connect(Y,X,P)
    <=> connect(X,Y,P) ) ).

