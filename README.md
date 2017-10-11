# git-recursive

An easy way to execute git operations in multiple repositories. Useful when you want to keep your organization's repos up-to-date.

## Installation

### Mac OS

```bash
brew install aelesbao/tools/git-recursive
```

### Building from source

Obtain the git-recursive source by cloning this repository or downloading a tarball of a [release](https://github.com/aelesbao/git-recursive/releases). Then install it by doing make install from the source tree.

```bash
git clone https://github.com/aelesbao/git-recursive.git
cd git-recursive
# checkout the latest tag
git checkout $(git describe --tags $(git rev-list --tags --max-count=1))
[sudo] make install
```

By default, git-recursive is installed under `/usr/local`. To install it at an alternate location, specify a `PREFIX` when calling `make`.

```bash
# Non-root users can install under their home directory
make install PREFIX=$HOME/software

# For third-party software kept under /opt
make install PREFIX=/opt
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
