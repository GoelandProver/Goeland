include('Axioms/CSR006+0.ax').
fof(antonymPattern30040,conjecture,
    ? [X,Y] :
      ( p__d__instance(Y,c__CommercialService)
      & p__d__instance(X,c__FinancialTransaction)
      & Y != X ) ).

