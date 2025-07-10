# Contributing to Goéland

## General Informations

This repository is organised in one development branch (`master`) and stable
versioned branches. Only maintainers can update these branches. Thus, if you
wish to contribute to Goéland, you should start by
[forking](https://github.com/GoelandProver/Goeland/fork) the repository. Then,
you can work on on your feature/bug fix/enhancement in your local repository.

Once you deem your work satisfactory, you should [open a pull
request](#working-with-pull-requests) targeting
master. Then, one of the maintainer will review your code as soon as
possible. If you have no feedback for a few days, do not hesitate to ping one of
them. The current maintainers are: @jcailler, @jrosain.

Your code is expected to (i) build, (ii) satisfy the unit tests and (iii) not
prove countertheorems. This check *does not* run automatically. One of the
maintainers will trigger the CI when he sees fit. You may check soundness
locally by running the `ci-soundness` target of the [devtools](devtools)
folder. Note that it is **not** the maintainer's responsibility to make your
modifications compatible with the master's branch. If there are any conflicts,
you are expected to solve them by rebasing your branch on top of upstream's
master.

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

By default, a pull request that modifies the go source code has the `needs:ci`
label. You may trigger CI jobs by adding the label `request:ci`, which will
remove the `needs:ci` if it succeeds. Every time a new push is done on the pull
request's branch, the `needs:ci` label will reappear. Avoid removing this label
by hand, and always prefer requesting the CI. 

It is the maintainer’s responsibility to:
- add the appropriate `part:` and `kind:` labels,
- approve changes once ready,
- assign a milestone indicating the target Goéland release (i.e., which version of Goéland should include the patch) before merging.


## Working with Pull Requests

Before opening a pull request, make sure your branch is up-to-date with the master's branch of `GoelandProver/Goeland` or at least mergeable without conflicts. You can update your branch using:

```bash
git fetch remote/master
git rebase remote/master
```

where `remote` is the name of the remote fetching `git@github.com:GoelandProver/Goeland.git` (which can be found using `git remote -v`)

1. Check that the branch with your new features/bug fixes is up-to-date.
2. Open a pull request [here](https://github.com/GoelandProver/Goeland/compare) targeting `master`.
3. Give an explicit name to your pull request, e.g., `Fix nil pointer exception when skolemizing` or `Add a library of maps`.
4. If your pull request is a bug fix, be sure to add `Closes: #???` where `#???` is the issue you are closing/fixing.
5. In any case, describe briefly what you did in the code and what are the technical points that might be of interest / things you are not sure about on the design you chose.
6. If you have updated the test-suite, list all the updates you did.
7. In particular, if you fixed a bug, you should have updated the test suite with the problem `.p` where the bug appeared (or a minimized version) in the `devtools/test-suite/bugs` folder and named it `bug_???.p` (or `bug_???-n.p` if there are multiple bugs).
8. If you introduce a new feature, you might add problems in the `devtool/test-suite/basic` or `devtool/test-suite/proofs` folders, and update the unit tests.
9. Once everything is clear, you can submit your PR and wait until a reviewer gets back to you.

Maintainers may ask you to squash your commits to simplify the history. However, squashing is not always required — in some cases, preserving the commit history is preferred. Wait for a maintainer's guidance before squashing. 

Subsequently, if you have any further question, the reviewer will answer them.
