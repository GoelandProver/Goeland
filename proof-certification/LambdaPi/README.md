# Proof Certification Using Goéland+LambdaPi

To output a LambdaPi proof of a problem file `problem.p`, use the `-olp` option:
```
./_build/goeland -olp problem.p
```

Assuming you are at the root of your local clone of this GitHub repo, checking this file
can be done using the following command:
```
lambdapi check --lib-root . --map-dir Logic.Goeland:proof-certification/LambdaPi problem.lp
```
