# Read and use JSON in bash using `jq`

Note: jq has to be installed. On macOS, the easiest way to do this is to run `brew install jq`.  To view install instructions for all platforms, see https://stedolan.github.io/jq/download/.

Example jq queries from this lesson:

```bash
# get a property by name
echo '{ "foo": 123 }' | jq '.foo'

# nested values
echo '{ "a": { "b": { 123 } } }' | jq '.a.b'

# pipe to jq with no selector to just format the JSON
curl https://api.github.com/repos/facebook/react | jq

# use with curl or any other JSON producing command
curl -s https://api.github.com/repos/facebook/react | jq '.stargazers_count'

# output each array element to a new line
echo '[1, 2, 3]' | jq '.[]'

# combine with property access syntax
echo '[{"id": 1}, {"id": 2}]' | jq '.[].id'

# realistic example with curl
curl -s https://api.github.com/search/repositories?q=service+worker | jq '.items[].name'

```
