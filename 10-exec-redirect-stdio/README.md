# Use exec to redirect stdio in a git hook script

See `hooks/post-merge` for the main script example. That script will check git's list of changed files and run npm install if package.json was changed after a git pull.

## Additional notes
If you ever need to redirect stdio and then restore it back to it's original state, you can do something like this:
```bash
# store the original file descriptors on an empty one
# file descriptors 3 - 9 are open for scripting use
exec 3>&1
# send stdout to a log file
exec > log

# script contents here...

# restore stdout and close fd 3
exec 1>&3 3>&-
```
You can run this directly in the shell to see it in action.

If your package.json isn't at the root level, you'll have to add a `-r` to the `git diff-tree` command.

### Resources
`exec` can get a little complicated. Here's some more reading materials:
- https://www.tldp.org/LDP/abs/html/x17974.html
- http://tldp.org/LDP/abs/html/io-redirection.html
