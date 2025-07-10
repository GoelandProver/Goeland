% result: VALID

% A1
fof(unique_t, axiom, (v | o | r)).

% A2
fof(exclusive_t, axiom, (~(v & o) & ~(o & r) & ~(r & v))).

% A3 
fof(unique_p, axiom, (m | a)).

% A4
fof(exclusive_p, axiom, (~(m & a))).

% A5
fof(rule1, axiom, (v => a)).

% A6
fof(rule2, axiom, (m => r)).

% A7
fof(car_movement, axiom, (dv => v)).

% A8
fof(pedestrian_movement, axiom, (dp => m)).

% Question
fof(safety_property, conjecture, (dp => ~dv)).
