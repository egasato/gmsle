BEGIN {
	pwd = ENVIRON["PWD"]
}
/[^[:space:]]/ {
	if (PROCINFO["version"] ~ /^[0-3]\./) {
		gsub(/[[:space:]]+/, " ")
		len = split($0, words, " ")
	} else {
		len = patsplit($0, words, "[^[:space:]]+")
	}
	for (i = 1; i <= len; i++) {
		word = words[i]
		if (word !~ /^\//) word = pwd "/" word
		word = gensub(/[^\/]*\/\.\.\//, "/", "g", word)
		word = gensub(/\.\//, "", "g", word)
		word = gensub(/\/+/, "/", "g", word)
		print word
	}
}
