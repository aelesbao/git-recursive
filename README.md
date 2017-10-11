# git-recursive

An easy way to execute git operations in multiple repositories. Useful when you want to keep your organization's repos up-to-date.

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
