# Create aliases in .bash_profile for common commands

```bash
alias git_sync="git pull -r && git push"

alias ll="ls -laG"
```

## Additional notes
Aliases don't have much use outside of bash_profile (or .bashrc). To unalias something, there's an `unalias <alias name>` command.

More documentation here: https://www.tldp.org/LDP/abs/html/aliases.html
