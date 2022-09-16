#' Counts To Cases
#'
#' Convert from data frame of counts to data frame of cases. From:
#' https://cran.r-project.org/web/packages/DescTools/vignettes/TablesInR.pdf
#'
#' @param df Data frame of counts
#' @param countcol The name of the column containing the counts
#'
#' @return A data frame of cases
#' @export
counts_to_cases <- function(df, countcol = "Freq") {
  # Get the row indices to pull from x
  idx <- rep.int(seq_len(nrow(df)), df[[countcol]])

  # Drop count column
  df[[countcol]] <- NULL

  # Get the rows from x
  df[idx, ]
}
# For testing
# devtools::load_all()
# matrix_ct <- matrix(
#   c(a = 7, b = 124, c = 1, d = 78),
#   ncol = 2,
#   byrow = TRUE
# )
#
# dimnames(matrix_ct) <- list(
#   Appendectomy = c("Yes", "No"),
#   Infection = c("Yes", "No")
# )
#
# matrix_ct_margins <- addmargins(matrix_ct)
# matrix_ct_margins
#
# matrix_ct %>%
#   as.table() %>%
#   as.data.frame() %>%
#   counts_to_cases() %>%
#   tibble()
