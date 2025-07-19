% env: TPTP=$(PWD)/test-suite/tptp_bugs_env
% result: VALID

include('bug_41-2.ax').

fof(prove_this,conjecture,p).
