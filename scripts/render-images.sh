#!/bin/sh

input_dir="./diagrams"
output_dir="./docs/images"

command_path=$( [ -z "$CI" ] && echo "." || echo "/home/mermaidcli" )
config_path=$( [ -z "$CI" ] && echo "." || echo "")

echo "Start rendering mermaid diagrams"

for file in "$input_dir"/*.mmd; do
  echo "rendering $file"

  base_name=$(basename "$file" .mmd)
  "$command_path/node_modules/.bin/mmdc" -p "$config_path/puppeteer-config.json" -i "$file" -o "$output_dir/${base_name}.svg" -b transparent
done

echo "Rendering mermaid diagrams completed."
