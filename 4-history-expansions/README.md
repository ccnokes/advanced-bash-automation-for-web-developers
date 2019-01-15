# Rerun Bash commands with history expansions

`!!` refers to the last command.

```bash
date
# running just !! will rerun the last command
!!
```

```bash
ifconfig en0 down
# this will probably fail, requires super user permissions, so...
sudo !!
```

`!$` is the last argument of the last command.
```bash
touch script.sh
chmod +x !$
```

