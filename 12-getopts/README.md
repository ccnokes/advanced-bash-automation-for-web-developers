# Create a bash script that accepts named options with `getopts`
See `getopts.sh`

## Additional notes

`getopts` is case-sensitive. So `-a` is not equal to `-A`, for example.

Don't confuse `getopts` with a similar but different command `getopt`. If you're on GNU/Linux, `getopt` is more robust (albeit more difficult to use) but can support different option formats like `--long` options. BSD/macOS `getopt` is different and not as robust as `getopts` is. 

If you want really robust options handling, you should probably handle it in node.js (or some other programming language) and, furthermore, use an existing library to handle all of that logic if you can.

When it comes to options parsing, there's *lots* of edge cases and different formats. To some extent, you can make `getopts` parse long options, see https://stackoverflow.com/questions/402377/using-getopts-in-bash-shell-script-to-get-long-and-short-command-line-options for possiblities and pitfalls.

