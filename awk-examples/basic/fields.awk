
# Demonstrate field processing
BEGIN {
    print "Field Processing Example"
    print "----------------------"
}

{
    print "Line " NR ":"
    print "First field: " $1
    print "Last field: " $NF
    print "Number of fields: " NF
    print "----------------------"
}
