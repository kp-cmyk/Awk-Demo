
# Simple calculator operations
BEGIN {
    print "Calculator Examples"
    print "---------------"
}

{
    # Assuming input format: number operator number
    num1 = $1
    operator = $2
    num2 = $3

    switch(operator) {
        case "+":
            result = num1 + num2
            break
        case "-":
            result = num1 - num2
            break
        case "*":
            result = num1 * num2
            break
        case "/":
            if (num2 != 0)
                result = num1 / num2
            else
                result = "Error: Division by zero"
            break
        default:
            result = "Error: Invalid operator"
    }

    printf "%s %s %s = %s\n", num1, operator, num2, result
}
