
my_func <- function(a, b, c, d) {
  or <- b/c
  se <- sqrt((1/b) + (1/c))
  lcl <- log(or) - (1.96 * se)
  lcl <- exp(lcl)
  ucl <- log(or) + (1.96 * se)
  ucl <- exp(ucl)
  
  out <- list(or = or, se = se, lcl = lcl, ucl = ucl)
  out
}


my_func(45, 25, 21, 20)

my_func_round <- function(a, b, c, d, dg) {
  or <- 1.191
  se <- round(sqrt(round((1/b), dg) + round((1/c), dg)), dg)
  lcl <- round(log(or), dg) - round((1.96 * se), dg)
  lcl <- round(exp(lcl), dg)
  ucl <- round(log(or), dg) + round((1.96 * se), dg)
  ucl <- round(exp(ucl), dg)
  
  out <- list(or = or, se = se, lcl = lcl, ucl = ucl)
  out
}


my_func_round(45, 25, 21, 20, 3)

my_mcnemar_test <- function(a, b, c, d) {
  
  abs_b_c <- abs(b - c)
  num <- abs_b_c - 1
  num_sqrd <- num ^ 2
  denom <- b + c
  chi2 <- num_sqrd / denom
  
  out <- list(
    abs_b_c = abs_b_c,
    num = num,
    num_sqrd = num_sqrd,
    denom = denom,
    chi2 = chi2
  )
  out
}

my_mcnemar_test(45, 25, 21, 20)

m <- matrix(c(45, 25, 21, 20), 2, byrow = TRUE)

mcnemar.test(m)
