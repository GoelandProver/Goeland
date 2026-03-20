% checks whether the transitivity rule is validated by our equality reasoning
% result: VALID

fof(eq_a_b, axiom, 
   a = b).

fof(eq_b_c, axiom, 
    b = c).

fof(test_eq, conjecture, 
    a = c).
