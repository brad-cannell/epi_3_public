# =============================================================================
# Case-control functions
# 2021-11-29

# I'm not exactly sure if these will be useful yet or not, but I'm saving them
# here just in case. I'm thinking that I may incorporate them into freqtables
# and/or R4Epi at some point
# =============================================================================

# Function for manually creating a crosstab from case-control data
freq_case_control_crosstab <- function(cell_vals, 
                                       row_names = c("Exposed", "Unexposed"), 
                                       col_names = c("Cases", "Controls")) {
  # Check to make sure that cell_vals is an even number
  if (length(cell_vals) %% 2 == 1) {
    stop(
      "Expecting `cell_vals` to have an even number of values. Instead, it has ",
      length(cell_vals), " values."
    )
  }
  
  # Create the crosstab as a matrix
  ct <- matrix(
    cell_vals,
    ncol = 2,
    byrow = TRUE
  )
  
  # Add names to make the crosstab more readable
  rownames(ct) <- row_names
  colnames(ct) <- col_names
  
  # Adding summary rows/columns to the matrix.
  ct <- cbind(ct, rowsum = rowSums(ct))
  ct <- rbind(ct, colsum = colSums(ct))
  
  # Return crosstab
  ct
}

# For testing
freq_case_control_crosstab(
  cell_vals = c(a = 180, b = 9820, c = 30, d = 9970),
  row_names = c("Severe Hypertension", "Normotensive"),
  col_names = c("MI", "No MI")
)