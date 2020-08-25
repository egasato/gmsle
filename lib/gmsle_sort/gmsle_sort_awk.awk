BEGIN {
	slen = 0
}
/[^[:space:]]/ {
	if (PROCINFO["version"] ~ /^[0-3]\./) {
		gsub(/[[:space:]]+/, " ")
		len = split($0, words, " ")
	} else {
		len = patsplit($0, words, /[^[:space:]]+/)
	}
	if (slen == 0) {
		asort(words, sorted)
		slen = len
	} else {
		i = j = k = 1
		while (i <= slen && j <= len)
			if (sorted[i] <= words[j])
				tmp[k++] = sorted[i++]
			else
				tmp[k++] = words[j++]
		while (i <= slen)
			tmp[k++] = sorted[i++]
		while (j <= len)
			tmp[k++] = wordss[j++]
		sorted = tmp
		slen = k - 1
	}
}
END {
	print join(sorted, 1, slen)
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
