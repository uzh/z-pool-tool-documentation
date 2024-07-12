#!/bin/sh

input_dir="diagrams"
output_dir="docs/images"

echo "Start rendering mermaid diagrams"

for file in "$input_dir"/*.mmd; do
  echo "rendering $file"
  base_name=$(basename "$file" .mmd)
  ./node_modules/.bin/mmdc -p puppeteer-config.json -i "$file" -o "$output_dir/${base_name}.svg" -b transparent
done

echo "Rendering mermaid diagrams completed."
