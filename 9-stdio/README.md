# Understand how to redirect stdin, stdout, and stderr in bash

```bash
ls -la /dev | grep 'std.*'
# this should show which file descriptors (fd) are matched to each standard input/output, like this:
# stdin -> fd/0
# stdout -> fd/1
# stderr -> fd/2
```

Redirect stdout
```bash
ls > ls.txt
cat ls.txt
```

Redirect stderr
```bash
ls noexist 2> ls-errs.txt
cat ls-errs.txt
```

Redirect stdout and stderr to the same file
Note the ampersand which tells bash that we're redirecting to a file descriptor (rather than an actual file)
```bash
ls noexist > ls.txt 2>&1
cat ls.txt
```

Redirect stdin
```bash
cat < ls.txt
```
