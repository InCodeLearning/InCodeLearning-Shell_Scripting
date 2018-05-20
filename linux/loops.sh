COLORS="red green blue"

echo "executing script $0"

for COLOR in $COLORS
do
  echo "COLOR: $COLOR"
done

for argument in $@
do
  echo "argument: $argument"
done
