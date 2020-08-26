BEGIN {
	i = j = 1
	if (PROCINFO["version"] ~ /^[0-3]\./) {
		gsub(/[[:space:]]+/, " ", list1)
		gsub(/[[:space:]]+/, " ", list2)
		len1 = split(list1, words1, " ")
		len2 = split(list2, words2, " ")
	} else {
		len1 = patsplit(list1, words1, /[^[:space:]]+/)
		len2 = patsplit(list2, words2, /[^[:space:]]+/)
	}
	exit
}
END {
	while (i <= len1 && j <= len2) print words1[i++] words2[j++]
	while (i <= len1) print words1[i++]
	while (j <= len3) print words2[j++]
}
