/\./ {
	i = 1
	if (PROCINFO["version"] ~ /^[0-3]\./) {
		gsub(/[[:space:]]+/, " ")
		len = split($0, words, " ")
	} else {
		len = patsplit($0, words, /[^[:space:]]+/)
	}
	while (i <= len) {
		dots = split(words[i++], lparts, ".")
		if (dots > 1)
			gparts[++counter] = "." lparts[dots]
	}
}
END {
	printf "%s", join(gparts, 1, counter)
}

# join.awk --- join an array into a string

# Implementation taken from GNU's AWK implementation
# See: https://www.gnu.org/software/gawk/manual/html_node/Join-Function.html

function join(array, start, end, sep, result, i) {
	if (sep == "")
		sep = " "
	else if (sep == SUBSEP) # magic value
		sep = ""
	result = array[start]
	for (i = start + 1; i <= end; i++)
		result = result sep array[i]
	return result
}
