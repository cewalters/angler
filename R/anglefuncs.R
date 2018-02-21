
hypotenuse <- function(opposite, adjacent){ sqrt(opposite^2 + adjacent^2)}

theta <- function(opposite, adjacent){
  opp <- opposite
  hyp <- hypotenuse(opposite, adjacent)
  theta <- asin(opp/hyp)

  return(theta)
}

phi <- function(opposite, adjacent){
  pi/2 - theta(opposite, adjacent)
}
