
while getopts ':ab:' opt; do
  case "$opt" in
    a) echo "a found";;
    b) echo "b found and the value is $OPTARG";;
    \?) echo "unknown option";;
  esac
done

shift $(( OPTIND - 1 ))

for arg in $@; do
  echo "received arg $arg"
done
