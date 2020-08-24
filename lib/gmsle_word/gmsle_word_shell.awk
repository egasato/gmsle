/[^[:space:]]/ {
	if (PROCINFO["version"] ~ /^[0-3]\./) {
		gsub(/[[:space:]]+/, " ")
		len = split($0, words, " ")
	} else {
		len = patsplit($0, words, /[^[:space:]]+/)
	}
	idx = n - count
	if (idx < 1) {
		idx = 1
	} else if (idx > len) {
		count += len
		next
	}
	print words[idx]
	exit
}
