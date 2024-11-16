# AWK Programming Examples

This repository contains practical examples demonstrating various aspects of AWK programming, including both basic concepts and real-world applications.

## Repository Structure
```bash
Awk-Demo/
├── awk-examples/      - Comprehensive AWK examples
│   ├── basic/        - Basic AWK concepts
│   ├── math/         - Mathematical operations
│   ├── logic/        - Control structures
│   ├── subroutines/  - Functions and procedures
│   ├── real_world/   - Practical applications
│   └── data/         - Sample data files
│
└── awk_slideset_code/ - Practical log analysis examples
    ├── hourly-traffic.awk  - Analyze traffic patterns by hour
    ├── ip-count.awk        - Count requests by IP address
    ├── security-check.awk  - Monitor failed login attempts
    ├── status-size.awk     - Analyze response sizes by status
    └── log.txt            - Sample log data
```

## Running the Examples

### Local Machine (Windows with MinGW)
1. Navigate to the project directory:
```bash
cd "path/to/Awk-Demo"
```

2. Run examples using:
```bash
# For awk-examples
awk -f awk-examples/basic/hello.awk
awk -f awk-examples/math/calculator.awk input_file

# For log analysis examples
awk -f awk_slideset_code/hourly-traffic.awk awk_slideset_code/log.txt
```

## Examples Overview

1. **Basic Operations** (awk-examples/basic/)
   - Field processing
   - Pattern matching
   - BEGIN/END blocks

2. **Mathematical Operations** (awk-examples/math/)
   - Basic calculations
   - Statistical analysis

3. **Logic Structures** (awk-examples/logic/)
   - Conditional statements
   - Loops and iterations

4. **Subroutines** (awk-examples/subroutines/)
   - Function definitions
   - Recursive functions

5. **Log Analysis Tools** (awk_slideset_code/)
   - Traffic analysis by hour
   - IP request counting
   - Security monitoring
   - Response size analysis

## Sample Data Files
1. `awk-examples/data/numbers.txt` - Numeric data for math examples
2. `awk-examples/data/sample.log` - Web server logs for analysis examples
3. `awk_slideset_code/log.txt` - Sample log data for analysis tools

## Notes
- Examples work with standard AWK (awk, nawk, or gawk)
- All code is thoroughly commented for learning purposes
- Each example demonstrates specific AWK features
- Log analysis tools provide practical, real-world usage examples