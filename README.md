This repository demonstrates a subtle but problematic behavior in R when subsetting data frames using character vectors of column names.  If any of the specified columns do not exist, the operation silently fails without warning, potentially leading to unexpected results and difficult-to-debug errors. The `bug.R` file shows the problematic code. The solution provided in `bugSolution.R` demonstrates a robust approach to avoid this issue.