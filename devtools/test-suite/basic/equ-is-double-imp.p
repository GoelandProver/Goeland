% Tests the semantics of equivalence as a conjunction of implications
% result: VALID

fof(test_equ,conjecture,
    (a <=> b) | ((~a & b) | (~b & a))).
        
