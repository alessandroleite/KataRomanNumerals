arabics <- c(1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1)
romans  <- c('M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I')

arabic_to_roman <- function (n) {
  roman <- NULL

  for (k in 1:length(arabics)) {
     while (n >= arabics[k]) {
        roman <- paste(roman, romans[k], sep='')
        n <- n - arabics[k]  
     }
  }
  return (roman)
}