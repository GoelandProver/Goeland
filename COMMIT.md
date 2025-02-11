# Commit rules

## Basic rules
Only very simple commits (such as changing the `COMMIT.md` file) should be made directly on the `develop` branch.

Each feature should have its own branch, with commits being done only on feature branches. When a feature is fully implemented, merge this branch with `develop`.
A feature branch should be named `dev/featurename`. If two people are working on the same feature, it is acceptable to have a two branches named `dev/featurename/devid1` and `dev/featurename/devid2`.

A commit should be formatted like this :
```
Title of the commit

Description of the modifications made in detail
```

## Merging rules

Your feature has been fully developed ? Let's merge it. First, verify that the feature branch is up-to-date with the target branch. We'll be using `develop` as the target in the following examples:
```
# Fetches the modifications from origin since the last fetch/pull.
git fetch
# If `develop` has been updated, get the modifications on your local branch
git rebase origin/develop
```
Once it's done, you can merge your feature on the target branch. Be careful to not fast forward it (to keep an history of the merges) :
```
# Branch you want to merge your work on. `develop` here.
git checkout develop
# Merge without fast forwarding, where $branch is the branch you're working on. 
git merge --no-ff $branch
```
Tag the commit message with a `MERGE` statement. Describe what feature you've developed, what's being added to the current state of the work. Don't forget to go back to your branch after merging.

## Merging on `master`

You should merge on `master` only when you've got a stable version of the application. It implies that if you merge on `master`, you can also create a `tag` to describe the new version.
