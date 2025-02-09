```r
# This code attempts to subset a data frame using a character vector of column names, but it fails silently if any specified column does not exist.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D")  #Column 'D' does not exist

subset_df <- df[, cols_to_select, drop = FALSE] 
print(subset_df)
#Notice that instead of an error, it just drops columns that don't exist
```