#' Cardápio de hoje no RU
#'
#'
#' @export
#'
cardapio_hoje <- function() {
  hoje <- weekdays(Sys.Date(),abbreviate = TRUE)

  result_hoje <- RU::cardapio_dia(hoje)

  return(result_hoje)
}
