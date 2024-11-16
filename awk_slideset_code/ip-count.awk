# ip-count.awk
{
    # $1 is the IP address
    count[$1]++
}

END {
    printf "%-15s %s\n", "IP Address", "Request Count"
    for (ip in count) {
        printf "%-15s %d\n", ip, count[ip]
    }
}