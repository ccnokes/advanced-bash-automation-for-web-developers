# Create a bash script that accepts named options with `getopts`
See `getopts.sh`

## Additional notes

Don't confuse `getopts` with a similar but different command `getopt`. If you're on GNU/Linux, `getopt` is more robust (albeit more difficult to use) but can support different option formats like `--long` options. BSD/macOS `getopt` is different and not as good as `getopts` is.

If you want really fancy options handling, you should probably write it in node.js (or some other programming language) and use a library to handle all of that logic.

When it comes to options parsing, there's *lots* of edge cases and different formats. To some extent, you can make `getopts` parse long options, see https://stackoverflow.com/questions/402377/using-getopts-in-bash-shell-script-to-get-long-and-short-command-line-options for possiblities and pitfalls.

