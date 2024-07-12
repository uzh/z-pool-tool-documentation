#!/bin/bash

input_dir="diagrams"
output_dir="images"

for file in "$input_dir"/*.mmd; do
  base_name=$(basename "$file" .mmd)
  ./node_modules/.bin/mmdc -p puppeteer-config.json -i "$file" -o "$output_dir/${base_name}.svg" -b transparent
done

echo "Rendering mermaid diagrams completed."
