/[^[:space:]]+/ {
	if (PROCINFO["version"] ~ /^[0-3]\./) {
		gsub(/[[:space:]]+/, " ")
		len = split($0, words, " ")
	} else {
		len = patsplit($0, words, "[^[:space:]]+")
	}
	print words[1]
	exit
}
