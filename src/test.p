
% SZS output start Proof for axioms.p


fof(ax1, axiom, a_1).

fof(ax4, axiom, (a_1 => b_2)).

fof(c_axioms_p, conjecture, b_2).

fof(f4, plain, [a_1, (a_1 => b_2), ~(b_2), ~(a_1)] --> [], inference(leftHyp, param(3, 0), [])) 

fof(f5, plain, [a_1, (a_1 => b_2), ~(b_2), b_2] --> [], inference(leftHyp, param(3, 2), [])) 

fof(f3, plain, [a_1, (a_1 => b_2), ~(b_2)] --> [], inference(leftImp2, param(1), [f4, f5])).

fof(f2, plain, [a_1, (a_1 => b_2), b_2] --> [b_2], inference(hyp, param(2, 0), [])).

fof(f1, plain, [a_1, (a_1 => b_2)] --> [b_2, ~(b_2)], inference(rightNot, param(0, 1), [f2])).

fof(f0, plain, [a_1, (a_1 => b_2)] --> [b_2], inference(cut, 0, [f1, f3])).

fof(ac1, plain, [a_1] --> [b_2], inference(cut, 0, [ax4, f0])).

fof(ac0, plain, [] --> [b_2], inference(cut, 0, [ax1, ac1])).



% SZS output end Proof for axioms.p
