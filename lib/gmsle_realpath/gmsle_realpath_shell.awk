@load "filefuncs"
BEGIN {
	pwd = ENVIRON["PWD"]
}
/[^[:space:]]/ {
	if (PROCINFO["version"] ~ /^[0-3]\./) {
		gsub(/[[:space:]]+/, " ")
		len = split($0, words, " ")
	} else {
		len = patsplit($0, words, /[^[:space:]]+/)
	}
	for (i = 1; i <= len; i++)
		word = words[i]
		do {
			result = stat(word, statdata)
			if (result != 0) break
			is_symlink = (statdata["type"] == "symlink")
			if (is_symlink) word = statdata["linkval"]
		} while (is_symlink)
		if (word !~ /^\//) word = pwd "/" word
		word = gensub(/[^\/]*\/\.\.\//, "/", "g", word)
		word = gensub(/\.\//, "", "g", word)
		word = gensub(/\/+/, "/", "g", word)
		print word
}
