% TODO: move this file to bugs once we enable typed GS3 proofs
% result: VALID

tff(nat_type,type,nat : $tType).
tff(zero_nat,type,zero : nat).
tff(succ_nat,type,succ : nat > nat).
tff(list_type,type,list : $tType > $tType).
tff(nil_list,type,nil : !> [A]: list(A)).
tff(cons_list,type,cons : !> [A]: ((A * list(A)) > list(A))).
tff(p_type,type,p : !> [A : $tType]: (list(A) > $o)).

tff(rocq_output_test,conjecture,! [A: $tType, X : A]:
  ((succ(zero) = succ(zero)) | (p(A,cons(A,X,nil(A))) | ~p(A,cons(A,X,nil(A)))))).
