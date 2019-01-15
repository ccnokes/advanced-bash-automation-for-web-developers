# use the first param if available, use current working directory by default
dir=${1:-$PWD}
# count the lines outputted by the find command to get the file count
find "$dir" -type f -maxdepth 1 | wc -l
