#!/bin/bash
for file in posts/*.md; do
    name=$(basename "$file" .md)
    out="posts/$name.html"
    pandoc "$file" --from markdown --to html > "$out"
    echo "✅ Built $out"
done
