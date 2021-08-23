mcd () {
	echo "Name of the function: $0, number of passed args: $#"
	mkdir -p "$1"
	cd "$1"
}
# foobar
