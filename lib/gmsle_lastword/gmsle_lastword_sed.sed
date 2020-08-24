/[^[:space:]]/ {
	:l
	/[^[:space:]]\+[[:space:]]\+[^[:space:]]\+/ {
		s/[^[:space:]]\+//
		bl
	}
	s/[[:space:]]//g
	h
}
$ {
	x
	p
}
