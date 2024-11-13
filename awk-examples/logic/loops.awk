
# Demonstrate different types of loops
BEGIN {
    print "Loop Examples"
    print "------------"

    print "\nFor Loop Example:"
    for (i = 1; i <= 5; i++)
        printf "Iteration %d\n", i

    print "\nWhile Loop Example:"
    j = 1
    while (j <= 5) {
        printf "While iteration %d\n", j
        j++
    }
}

{
    print "\nField Loop Example:"
    for (k = 1; k <= NF; k++)
        printf "Field %d: %s\n", k, $k
}
