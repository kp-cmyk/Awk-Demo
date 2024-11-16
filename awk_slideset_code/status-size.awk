# status-size.awk
{
    # $9 is status code, $10 is response size
    count[$9]++
    total[$9] += $10
}

END {
    printf "%-6s %-10s %-10s\n", "Status", "Count", "Avg Size"
    for (status in count) {
        avg = total[status]/count[status]
        printf "%-6s %-10d %-10.2f\n", status, count[status], avg
    }
}