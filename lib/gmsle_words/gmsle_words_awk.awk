{
	if (PROCINFO["version"] ~ /^[0-3]\./) {
		gsub(/[[:space:]]+/, " ")
		count += split($0, null, " ")
	} else {
		count += patsplit($0, null, /[^[:space:]]+/)
	}
}
END {
	print count
}
