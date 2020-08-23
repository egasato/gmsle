BEGIN {
	rem = e - s + 1
}

/[^[:space:]]/ {
	if (PROCINFO["version"] ~ /^[0-3]\./) {
		gsub(/[[:space:]]+/, " ")
		len = split($0, words, " ")
	} else {
		len = patsplit($0, words, /[^[:space:]]+/)
	}
	idx = s - count
	if (idx < 1) {
		idx = 1
	} else if (idx > len) {
		count += len
		next
	}
	lim = len - idx + 1
	if (rem < lim) lim = rem
	end = idx + lim
	while (idx < end)
		print words[idx++]
	rem -= lim
	if (rem <= 0) exit
	count += idx - 1
}
