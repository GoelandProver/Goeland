% result: VALID

% A1
fof(a1_r_not_o_v, axiom, ( ( r => ( ~ o & ~ v ) ) &  
                           ( o => ( ~ r & ~ v ) ) &  
                           ( v => ( ~ r & ~ o ) ) ) ).

% A1_p
fof(a1_prime_r_o_t, axiom, ( r | o | t ) ).

% A2
fof(a2_a_not_m, axiom, ( ( a => ~ m ) &  
                         ( m => ~ a ) ) ).

% A2_p
fof(a2_prime_a_m, axiom, ( a | m ) ).

% A3
fof(a3_v_to_a, axiom, ( v => a ) ).

% A4
fof(a4_m_to_r, axiom, ( m => r ) ).

% A5
fof(a5_cycle, axiom, ( (v => o) | (o => r) | (r => v) ) ).

% Conjecture
fof(conjecture_no_v_and_m, conjecture, ( ~ (v & m) ) ).
