#' Cardápio da semana no RU
#'
#' @export
#'
cardapio_geral <- function() {

  url <- "http://www.ru.uem.br/cardapio-1"

  ru <- rvest::read_html(url)

  table <- ru %>%
    rvest::html_table()

  seg <- grep("Segunda-Feira", table)
  ter <- grep("Terça-Feira", table)
  qua <- grep("Quarta-Feira", table)
  qui <- grep("Quinta-Feira", table)
  sex <- grep("Sexta-Feira", table)


  cardapio_geral <- dplyr::tibble(
    cardapio = c(table[[seg]]$X1[1],
                 table[[ter]]$X1[1],
                 table[[qua]]$X1[1],
                 table[[qui]]$X1[1],
                 table[[sex]]$X1[1])
  )


  cat(cardapio_geral$cardapio,sep = "\n-----\n")

}
