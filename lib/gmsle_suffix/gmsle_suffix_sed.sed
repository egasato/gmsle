/\./! d
s/^[[:space:]]\+//
s/[[:space:]]\+$//
s/[[:space:]]\+/ /g
/\./ {
	s#[^[:space:]]\+/##g
	s#[^[:space:]]\+\.#.#g
	s#[[:space:]]*[^[:space:]\.][^[:space:]]\+##g
	p
}
