% should fail because $lesseq is a defined function for $int, $rat and $real but is not polymorphic
% for any type
% exit: 1

tff(ty_type, type, ty : $tType).

tff(conj, conjecture, ! [A : ty] : $lesseq(A, A)).
