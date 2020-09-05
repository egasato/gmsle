/[^[:space:]]/ {
	i = 0
	if (PROCINFO["version"] ~ /^[0-3]\./) {
		gsub(/[[:space:]]+/, " ")
		len = split($0, words, " ")
	} else {
		len = patsplit($0, words, "[^[:space:]]+")
	}
	while (len-- > 0) {
		op[++counter] = words[++i]
		if (counter == 3)
			exit
	}
}
END {
	if (counter >= 3) {
		for (i = 1; i <= 3; i++)
			gsub(/^[[:space:]\.]+|[[:space:]\.]+$/, "", op[i])
		len1 = split(op[1], op1, ".")
		for (i = 1; i <= len1; i++)
			op1[i] = int(op1[i])
		op2 = op[2]
		len3 = split(op[3], op3, ".")
		for (i = 1; i <= len3; i++)
			op3[i] = int(op3[i])
		len = (len1 <= len3 ? len1 : len3)
		switch (op2) {
			case ">":
			case ">=":
				for (i = 1; i <= len; i++)
					if (op1[i] > op3[i]) {
						print "#t"
						exit
					} else if (op1[i] < op3[i]) {
						exit
					}
				if (op2 == ">") {
					if (len1 > len3)
						for (; i <= len1; i++)
							if (op1[i] != 0) {
								print "#t"
								exit
							}
				} else {
					if (len1 < len3)
						for (; i <= len3; i++)
							if (op3[i] != 0)
								exit
					print "#t"
				}
				break
			case "<":
			case "<=":
				for (i = 1; i <= len; i++)
					if (op1[i] < op3[i]) {
						print "#t"
						exit
					} else if (op1[i] > op3[i]) {
						exit
					}
				if (op2 == "<") {
					if (len1 < len3)
						for (; i <= len3; i++)
							if (op3[i] != 0) {
								print "#t"
								exit
							}
				} else {
					if (len1 > len3)
						for (; i <= len1; i++)
							if (op1[i] != 0)
								exit
					print "#t"
				}
				break
			case "==":
				for (i = 1; i <= len; i++) {
					if (op1[i] != op3[i])
						exit
				}
				if (len1 > len3) {
					for (; i <= len1; i++)
						if (op1[i] != 0)
							exit
				} else {
					for (; i <= len3; i++)
						if (op3[i] != 0)
							exit
				}
				print "#t"
				break
			case "!=":
				for (i = 1; i <= len; i++)
					if (op1[i] != op3[i]) {
						print "#t"
						exit
					}
				if (len1 > len3) {
					for (; i <= len1; i++)
						if (op1[i] != 0) {
							print "#t"
							exit
						}
				} else {
					for (; i <= len3; i++)
						if (op3[i] != 0) {
							print "#t"
							exit
						}
				}
				break
		}
	}
}
