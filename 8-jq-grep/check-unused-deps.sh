
for dep in $(jq -r '.dependencies | keys | .[]' package.json); do
  if ! grep "require\(.*$dep.*\)" -Rq --exclude-dir="node_modules" .; then
    echo "You can probably remove $dep"
  fi
done
