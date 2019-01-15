# Use `case` for complicated conditional statements in bash

The basic syntax:

```bash
case $variable in
  pattern) command-list;;
esac
```

For example:
```bash
case "$1" in
  a) echo "a matched";;
  b) echo "b matched";;
  c)
    echo "c matched"
  ;;
esac
```

See `extract.sh` for the example script.
