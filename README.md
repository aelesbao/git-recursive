# git-recursive
Execute git operations in multiple repositories

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

**GNU GENERAL PUBLIC LICENSE**

Copyright (C) 2007 Free Software Foundation, Inc. <http://fsf.org/>
Everyone is permitted to copy and distribute verbatim copies
 of this license document, but changing it is not allowed.
