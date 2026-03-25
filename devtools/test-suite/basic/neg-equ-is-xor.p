% Checks the semantics of the negated equivalence as a XOR
% result: VALID

fof(test_equ,conjecture,
    ~(a <=> b) | ((a & b) | (~b & ~a))).
        
