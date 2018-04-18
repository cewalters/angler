####################################################
# Assertions
###################################################

assert_length <- function(length, name = deparse(substitute(length))) {
  if (!(0 < length) ) {
    stop(sprintf("Expected '%s' to be a positive value", name))
  }
}

assert_acute_angle <- function(angle, name = deparse(substitute(angle))) {
  if (!(0 < angle) | !(angle < pi/2)) {
    stop(sprintf("Expected '%s' to be an acute angle", name))
  }
}
