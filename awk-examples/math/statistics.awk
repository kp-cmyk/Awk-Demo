
# Calculate basic statistics
BEGIN {
    sum = 0
    count = 0
    max = -999999
    min = 999999
}

{
    # Process each number in the input
    for (i = 1; i <= NF; i++) {
        sum += $i
        count++
        if ($i > max) max = $i
        if ($i < min) min = $i
    }
}

END {
    print "Statistics Results"
    print "----------------"
    print "Count:", count
    print "Sum:", sum
    print "Average:", sum/count
    print "Maximum:", max
    print "Minimum:", min
}
