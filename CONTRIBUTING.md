# Contributing to Goéland

## General Informations

This repository is organised in one development branch (`master`) and stable
versioned branches. Only maintainers can update these branches. Thus, if you
wish to contribute to Goéland, you should start by
[forking](https://github.com/GoelandProver/Goeland/fork) the repository. Then,
you can work on on your feature/bug fix/enhancement in your local repository.

Once you deem your work satisfactory, you should [open a pull
request](https://github.com/GoelandProver/Goeland/compare) **targeting
master**. Then, one of the maintainer will review your code as soon as
possible. If you have no feedback for a few days, do not hesitate to ping one of
them. The current maintainers are: @jcailler, @jrosain.

Your code is expected to (i) build, (ii) satisfy the unit tests and (iii) not
prove countertheorems. This check *does not* run automatically. One of the
maintainers will trigger the CI when he sees fit. You may check soundness
locally by running the `ci-soundness` target of the [devtools](devtools)
folder. Note that it is **not** the maintainer's responsibility to make your
modifications compatible with the master's branch. If there are any conflicts,
you are expected to solve them by *rebasing your branch on top of upstream's
master*.

If you are solving a bug referenced in the issue tracker, do not forget to link
it in the PR.

### Error management

When you add code or fix old code, try to find the possible error cases where an
uncontrolled `panic` can occur, and use the error interface in `Glob`. For example, if you
do a pattern matching on a value and you reach an unreachable case, you should return a
`Glob.Anomaly`: this is something that shouldn't happen, there is an error in the
code. Otherwise, if the problem does not come from the code but e.g., from the problem
being malformed or any other external factor, you should fail using `Glob.Fatal`. Try to
have a very descriptive error as it will make things easier to debug.

Note that, by default, neither of these options `panic`. You have to activate the `-debug`
flag in order for them to panic and you to have a backtrace.

## For Maintainers

By default, a pull request that modifies the go source code has the `needs:ci` label. You
may trigger CI jobs by adding the label `request:ci`, which will remove the `needs:ci` if
it succeeds. Every time a new push is done on the pull request's branch, the `needs:ci`
label will reappear. Try to never remove this label by hand, it is good practice to
request a successful full ci run before merging the PR into the master's branch. Moreover,
it is your responsibility to put the right `part:` and `kind:` labels.

Once you approve the modifications, you should add the target milestone (i.e.,
which version of Goéland should include the patch) before merging.
