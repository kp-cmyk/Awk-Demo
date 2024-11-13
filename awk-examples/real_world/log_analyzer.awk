
# Analyze web server logs
BEGIN {
    print "Log Analysis Report"
    print "-----------------"
}

{
    # Count requests by status code
    status[$9]++

    # Sum bytes transferred
    bytes += $10

    # Count requests by IP
    requests[$1]++
}

END {
    print "\nStatus Code Summary:"
    for (code in status)
        printf "HTTP %s: %d requests\n", code, status[code]

    print "\nTop 5 IPs by requests:"
    for (ip in requests)
        printf "%s: %d requests\n", ip, requests[ip]

    printf "\nTotal bytes transferred: %d bytes\n", bytes
}
