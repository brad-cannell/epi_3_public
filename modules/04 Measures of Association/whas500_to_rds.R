# =============================================================================
# Convert whas500.txt to whas500.rds
# 2023-09-26
# I want Epi III students to be able to open the file by double-clicking. We
# are no longer covering importing files in Epi III.
# =============================================================================

# Load packages
library(dplyr, warn.conflicts = FALSE) # The "warn.conflicts" part is optional
library(readr)

# Import whas500.txt
whas500 <- read_table("modules/04 Measures of Association/whas500.txt",
  col_types = cols(
    id        = col_character(),
    age       = col_integer(),
    gender    = col_integer(),
    hr        = col_integer(),
    sysbp     = col_integer(),
    diasbp    = col_integer(),
    cvd       = col_integer(),
    afb       = col_integer(),
    sho       = col_integer(),
    chf       = col_integer(),
    av3       = col_integer(),
    miord     = col_integer(),
    mitype    = col_integer(),
    year      = col_integer(),
    admitdate = col_date(format = "%m/%d/%y"),
    disdate   = col_date(format = "%m/%d/%y"),
    fdate     = col_date(format = "%m/%d/%y"),
    los       = col_integer(),
    dstat     = col_integer(),
    lenfol    = col_integer(),
    fstat     = col_integer()
  )
)

# Export to Rds
write_rds(whas500, "modules/04 Measures of Association/whas500.Rds")
