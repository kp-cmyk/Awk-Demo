# security-check.awk
# Track failed login attempts
/POST.*\/login/ && $9 == "401" {
    failed_logins[$1]++
    
    if (failed_logins[$1] >= 5) {
        printf "WARNING: IP %s has %d failed login attempts\n", 
               $1, failed_logins[$1]
    }
}