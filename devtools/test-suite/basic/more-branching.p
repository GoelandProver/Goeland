% Propositional problem that branches a bit but not too much, should be instantaneous
% result: VALID

fof(prove_this,conjecture,
    ( p_1
  <=> ( p_2
    <=> ( p_3 
     <=> ( p_1 <=> ( p_2 <=> p_3)))))).
