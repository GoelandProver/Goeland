% result: VALID

fof(test_equ,conjecture,
    (a <=> b) | ((~a & b) | (~b & a))).
        