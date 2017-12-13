counts = {}
for line in input() {
    line = lower(line)
    for word in split(line, nil) {
        if word in counts {
            counts[word] = counts[word] + 1
        } else {
            counts[word] = 1
        }
    }
}
pairs = []
for key in counts {
    append(pairs, [key, counts[key]])
}
sort(pairs, func(x) {
    return -x[1]
})
max = len(pairs)
if max > 25 {
    max = 25
}
for i in max {
    pair = pairs[i]
    print(pair[0], pair[1])
}
