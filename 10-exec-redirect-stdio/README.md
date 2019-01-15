# Use exec to redirect stdio in a git hook script

See hooks/post-merge.

## Additional notes
If you ever need to redirect stdio and then restore it back to it's original state, you can do something like this:
```bash
# store the original file descriptors on an empty one
# file descriptors 3 - 9 are open for scripting use
exec 3>&1
# send stdout to a log file
exec > log

# script contents here...

# retore stdout and close fd 3
exec 1>&3 3>&-
```
You can run this directly in the shell to see it in action.

### Resources
`exec` can get a little complicated. Here's some more reading materials:
- https://www.tldp.org/LDP/abs/html/x17974.html
- http://tldp.org/LDP/abs/html/io-redirection.html
