base_dir=$(dirname "$(readlink -f "$0")")

if hash python3; then
  python3="python3"
elif hash python 2> /dev/null && [[ $(python -c 'import sys; print(int(sys.version_info[0] > 2))') -eq 1 ]]; then
  python3="python"
else
  echo "MakeHack.sh requires python 3 to be installed!" 1>&2
  exit 1
fi

source_rom="$base_dir/FE8_clean.gba"

c2ea_py="$base_dir/Tools/C2EA/c2ea.py"
textprocess_py="$base_dir/Tools/TextProcess/text-process-classic.py"
parsefile="$base_dir/Event Assembler/Tools/ParseFile"

  # TABLES

echo "Processing tables"

cd "$base_dir/Tables"
echo | $python3 "$c2ea_py" \
  "$source_rom"

  # TEXT
  
echo "Processing text"

cd "$base_dir/Text"
echo | $python3 "$textprocess_py" \
  "text_buildfile.txt" --parser-exe "$parsefile" --definitions "TextDefinitions.event"

