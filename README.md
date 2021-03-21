# git-recursive

An easy way to execute git operations in multiple repositories. Useful when you want to keep all your repos up-to-date.

Imagine you want to sync your local repositores and those are organised like this:

```
~/workspace
  /repo-group-1
    /repo1
    /repo2
    /repo3
  /repo-group-2
    /repo1
    /repo2
```

Instead of going into each of them and doing a `git pull`, with git-recursive you can just execute:

```bash
git recursive repo-group-1 pull
```

## Installation

### Mac OS

```bash
brew install aelesbao/tools/git-recursive
```

### Building from source

Obtain the git-recursive source by cloning this repository or downloading a tarball of a [release](https://github.com/aelesbao/git-recursive/releases). Then install it by doing `make install` from the source tree.

```bash
git clone https://github.com/aelesbao/git-recursive.git
cd git-recursive
# checkout the latest tag
git checkout $(git describe --tags $(git rev-list --tags --max-count=1))
[sudo] make install
```

By default, git-recursive is installed under `/usr/local`. To install it at an alternate location, specify a `PREFIX` when calling `make`.

```bash
make install PREFIX=$HOME/software
```

## Setup

git-recursive uses your `.gitconfig` file to store the path to a repository root, called `workspace`. To configure it, you should run:

```bash
git recursive add repo-group-1 ~/workspace/repo-group-1
```

> Mutiples workspaces are supported. Just add them as you want.

Any command issued on a workspace will be forwarded to its child repositories:

```bash
git recursive repo-group-1 status
```

To list the registered workspaces:

```bash
git recursive list
```

## Usage

```
usage: git recursive [<options>] <subcommand>|(<workspace> <gitcommand>)

Available options are:
  --no-color        Do not colorize output
  -h|--help         Prints this message
  -v|--version      Prints the plugin version

Available subcommands are:
  list                      Lists registered workspaces
  add <workspace> <path>    Adds or updates a workspace path
  rm <workspace>            Removes a workspace

Running commands in a workspace:
  <workspace> <gitcommand>  Executes a git command on all repositories inside
                            the workspace
```

## License

**MIT License**

Copyright (c) 2017
