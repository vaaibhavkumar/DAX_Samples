#Tutorial02: Session 3: Logical values and Operands

#Capital True or T
#Capital False or F

4<5
4>5
4==5# note for comparison we need to use double equalto ==
# ==
# !=
# >
# <
# <=
# =
#!    NOT
#/    OR
# &   AND
# istrue(x)

result<- 4<5  # TRUE
result
typeof(result) #logical

# Not operator !
result2 <- !TRUE
result2# False
typeof(result2)

result | result2     # OR (TRUE, FALSE) = TRUE
result & result2     # AND(TRUE, FALSE) = FALSE
