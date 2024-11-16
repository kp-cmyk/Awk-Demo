# hourly-traffic.awk
{
    # Extract hour from timestamp [DD/Mon/YYYY:HH:MM:SS]
    match($4, /:[0-9][0-9]:/)  # Match :HH: portion
    hour = substr($4, RSTART+1, 2)  # Extract just the hours
    requests[hour]++
}

END {
    printf "%-5s %s\n", "Hour", "Requests"
    for (hour = 0; hour <= 23; hour++) {
        hr = sprintf("%02d", hour)
        printf "%-5s %d\n", hr, requests[hr] ? requests[hr] : 0
    }
}