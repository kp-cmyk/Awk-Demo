
# Demonstrate function usage
function factorial(n) {
    if (n <= 1)
        return 1
    return n * factorial(n-1)
}

function fibonacci(n) {
    if (n <= 2)
        return 1
    return fibonacci(n-1) + fibonacci(n-2)
}

{
    printf "Number: %d\n", $1
    printf "Factorial: %d\n", factorial($1)
    printf "Fibonacci: %d\n", fibonacci($1)
    print "------------"
}
