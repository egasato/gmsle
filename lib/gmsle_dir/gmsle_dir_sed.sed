/^[[:space:]]*$/ d
s/^[[:space:]]\+//
s/[[:space:]]\+$//
s/[[:space:]]\+/ /g
/[^[:space:]\/]/ {
	s#/[^[:space:]/]*#/#
	s#[^[:space:]/]\+$#./#
	s#^[^[:space:]/]\+\([[:space:]]\)#./\1#
	s#\([[:space:]]\)[^[:space:]/]\+\([[:space:]]\)#\1./\2#
}
/[^[:space:]]/ p
