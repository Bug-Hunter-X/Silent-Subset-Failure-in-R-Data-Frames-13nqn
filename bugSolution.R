```r
# Robust subsetting of data frames in R

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D")

# Check if all columns exist before subsetting
existing_cols <- intersect(cols_to_select, names(df))
if (length(existing_cols) != length(cols_to_select)) {
  warning(paste("Columns not found:", paste(setdiff(cols_to_select, names(df)), collapse = ", ")))
}

subset_df <- df[, existing_cols, drop = FALSE] #Subset only existing columns
print(subset_df)

#Alternative using dplyr package for more concise solution
library(dplyr)
subset_df2 <- df %>% select(all_of(cols_to_select))
print(subset_df2) # will print warning if columns are not present
```