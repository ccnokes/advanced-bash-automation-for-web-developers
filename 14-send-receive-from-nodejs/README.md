# Send and receive data from a node.js script in bash using the process object

Use `node -p` for one-liners, like this:
```bash
cpus=$(node -p 'os.cpus().length')
echo $cpus
```

See qscheck for the example script. We can use that script like so:
```bash
./qscheck 'abc=123&def=456' abc 123
echo $? # check the exit status, should be 0
./qscheck 'abc=123&def=456' abc 124
echo $? # should be 1
```
