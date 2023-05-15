#' Cardápio do dia no RU
#'
#' @param dia_semana
#'
#' @export
#'
cardapio_dia <- function(dia_semana) {

  url <- "http://www.ru.uem.br/cardapio-1"

  ru <- rvest::read_html(url)

  table <- ru %>%
    rvest::html_table()

  seg <- grep("[S|s]egunda[-| ][F|f]eira", table)
  ter <- grep("[T|t]erça[-| ][F|f]eira", table)
  qua <- grep("[Q|q]uarta[-| ][F|f]eira", table)
  qui <- grep("[Q|q]uinta[-| ][F|f]eira", table)
  sex <- grep("[S|s]exta[-| ][F|f]eira", table)


  cardapio_geral <- dplyr::tibble(
    cardapio = c(table[[seg]]$X1[1],
                 table[[ter]]$X1[1],
                 table[[qua]]$X1[1],
                 table[[qui]]$X1[1],
                 table[[sex]]$X1[1])
  )
  if (dia_semana %in% c("segunda", "segunda-feira", "segunda feira", "seg")) {
    cat(cardapio_geral$cardapio[1])
  } else if (dia_semana %in% c("terça", "terça-feira", "terca", "terca-feira")) {
    cat(cardapio_geral$cardapio[2])
  } else if (dia_semana %in% c("quarta", "quarta-feira", "qua", "quarta feira")) {
    cat(cardapio_geral$cardapio[3])
  } else if (dia_semana %in% c("quinta", "quinta-feira", "quinta feira", "qui")) {
    cat(cardapio_geral$cardapio[4])
  } else if (dia_semana %in% c("sexta", "sexta-feira", "sexta feira", "sex")) {
    cat(cardapio_geral$cardapio[5])
  } else {
    cat("Não há cardápio disponível para o dia informado.")
  }
}
