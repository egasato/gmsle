/[^[:space:]]/ {
	s/^[[:space:]]\+//
	s/[[:space:]].\+//
	p
	q
}
