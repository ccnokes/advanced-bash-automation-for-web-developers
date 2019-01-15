# Set default arguments with bash shell parameter expansions

They can be used to simply output a variable.
```bash
echo ${HOME}
```
This can be useful in scenarios like this:
```bash
# this won't work, just outputs the current year because it's looking for a $USER_ variable
echo $USER_$(date '+%Y')
# this works
echo ${USER}_$(date '+%Y')
```

```bash
# $str doesn't exist, so 'default' is used instead
echo ${str:-'default'}
```
