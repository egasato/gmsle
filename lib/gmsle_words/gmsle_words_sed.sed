/[^[:space:]]/ {
	x
	/^$/ s/^.*$/0/
	/^9*$/ s/^/0/
	s/.9*$/x&/
	h
	s/^.*x//
	y/0123456789/1234567890/
	x
	s/x.*$//
	G
	s/\n//
	h
}
$ {
	x
	p
}
