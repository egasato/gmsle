/^[[:space:]]*$/ d
s/^[[:space:]]\+//
s/[[:space:]]\+$//
s/[[:space:]]\+/ /g
/\./ {
	s#\.[^/]\+\([[:space:]]\)#\1#g
	s#\.[^/]\+$##g
}
/[^[:space:]]/ p
