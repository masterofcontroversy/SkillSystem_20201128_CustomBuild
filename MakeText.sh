base_dir=$(dirname "$(readlink -f "$0")")

if hash python3; then
  python3="python3"
elif hash python 2> /dev/null && [[ $(python -c 'import sys; print(int(sys.version_info[0] > 2))') -eq 1 ]]; then
  python3="python"
else
  echo "MakeHack.sh requires python 3 to be installed!" 1>&2
  exit 1
fi

textprocess_py="$base_dir/Tools/TextProcess/text-process-classic.py"
parsefile="$base_dir/Event Assembler/Tools/ParseFile"

echo "Processing text"

cd "$base_dir/Text"
echo | $python3 "$textprocess_py" \
  "text_buildfile.txt" --parser-exe "$parsefile"

