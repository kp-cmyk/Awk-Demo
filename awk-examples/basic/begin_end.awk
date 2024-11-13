
# Demonstrate BEGIN, pattern-action, and END blocks
BEGIN {
    print "Processing Start"
    count = 0
}

{
    count++
    print "Processing line " count ": " $0
}

END {
    print "Processing Complete"
    print "Total lines processed: " count
}
