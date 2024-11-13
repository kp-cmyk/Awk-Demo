
# Demonstrate conditional statements
{
    # Check if number is positive, negative, or zero
    if ($1 > 0)
        status = "positive"
    else if ($1 < 0)
        status = "negative"
    else
        status = "zero"

    # Check if number is even or odd
    if ($1 % 2 == 0)
        type = "even"
    else
        type = "odd"

    printf "Number %d is %s and %s\n", $1, status, type
}
