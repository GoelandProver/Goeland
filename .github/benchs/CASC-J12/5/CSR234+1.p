include('Axioms/CSR006+0.ax').
fof(instrumentRelation0021,conjecture,
    ? [X,Y] :
      ( p__d__instance(Y,c__Physical)
      & p__d__instance(X,c__IntentionalProcess)
      & p__d__instance(Y,c__EngineeringComponent)
      & p__instrument(X,Y)
      & p__d__instance(X,c__Process) ) ).

