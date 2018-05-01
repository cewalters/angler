
#' Find the hypotenuse.
#'
#' Find the hypotenuse of a right-angled triangle in Euclidean space from the
#' other two sides.
#' @param opposite A number.
#' @param adjacent A number.
#' @return The hypotenuse of the right-angled triangle with sides
#' \code{opposite} and \code{adjacent}.
#' @examples
#' hypotenuse(1, 1)
#' hypotenuse(10, 1)
#'
#' @export


hypotenuse <- function(opposite, adjacent){
  assert_length(opposite)
  assert_length(adjacent)
  sqrt(opposite^2 + adjacent^2)
  }

#' Find theta.
#'
#' Find the angle between adjacent and hypotenuse of a right-angled triangle in
#' Euclidean space.
#' @param opposite A number.
#' @param adjacent A number.
#' @return The angle between side \code{adjacent} and the hypotenuse.
#' @examples
#' theta(1, 1)
#' theta(10, 1)
#'
#' @export

theta <- function(opposite, adjacent){
  opp <- opposite
  hyp <- hypotenuse(opposite, adjacent)
  theta <- asin(opp/hyp)

  return(theta)
}

#' Find phi.
#'
#' Find the angle between opposite and hypotenuse of a right-angled triangle in
#' Euclidean space.
#' @param opposite A number.
#' @param adjacent A number.
#' @return The angle between side \code{opposite} and the hypotenuse.
#' @examples
#' phi(1, 1)
#' phi(10, 1)
#'
#' @export

phi <- function(opposite, adjacent){
  pi/2 - theta(opposite, adjacent)
}


