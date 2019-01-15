# Create and copy multiple files with brace expansions in Bash

Brace expansions are commonly used when copying or moving files.
```bash
cp index.js{,.backup}
# Expands to `cp index.js index.js.backup`
```

Another way it can be used is when making several folders that all follow the same structure.
```bash
mkdir -p packages/{pkg1,pkg2,pkg3}/src
```

Brace expansions can be used for sequences as well.
```bash
echo {1..10}
echo {a..z}
```

For example, a sequence could be used to generate N test files quickly.
```bash
touch test-{1..10}
```
