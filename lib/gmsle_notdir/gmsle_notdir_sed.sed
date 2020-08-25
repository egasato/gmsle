/^[[:space:]]*$/ d
s/^[[:space:]]\+//
s/[[:space:]]\+$//
s/[[:space:]]\+/ /g
/[^[:space:]]/ {
	s#[^[:space:]]\+/##g
	p
}
