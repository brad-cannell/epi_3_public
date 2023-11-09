rr_ci <- function(a, b, c, d, digits = 3) {
  rr <- (a / (a + b)) / (c / c(c + d))
  se <- sqrt((b / (a * (a + b))) + (d / (c * (c + d))))
  ll <- rr * exp(-1.96 * se)
  ul <- rr * exp(1.96 * se)
  out <- data.frame(
    RR = round(rr, digits),
    SE = round(se, digits),
    LL = round(ll, digits),
    UL = round(ul, digits)
  )
  out
}

rr_ci(1445, 3134, 1870, 1541, digits = 6)
