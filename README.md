
<!-- README.md is generated from README.Rmd. Please edit that file -->

# RU

<!-- badges: start -->
<!-- badges: end -->

Pra que acessar o site do RU se você pode buscar o cardápio direto pelo
R??

## Instalação

Baixe o pacote usando a função:

``` r
if (!requireNamespace("remotes"), quietly = TRUE)){
  install.packages("remotes")}
    
remotes::install_github("brunomioto/RU")
```

## Exemplo

É possível buscar o cardápio semanal do RU:

``` r
library(RU)

cardapio_geral()
#> Segunda-Feira - 15/05
#> SOMENTE ALMOÇO
#> ISCAS ACEBOLADA
#> ARROZ/FEIJÃO
#> SALADA
#> FRUTA
#> -----
#> Terça-Feira - 16/05
#> SOMENTE ALMOÇO
#> LINGUIÇA ACEBOLADA
#> ARROZ/FEIJÃO
#> SALADA
#> FRUTA
#> -----
#> Quarta-Feira - 17/05
#> SOMENTE ALMOÇO
#> FRANGO ASSADO
#> ARROZ/FEIJÃO
#> SALADA
#> FRUTA
#> -----
#> Quinta-Feira - 18/05
#> SOMENTE ALMOÇO
#> CARNE COM LEGUMES
#> ARROZ/FEIJÃO
#> SALADA
#> FRUTA
#> -----
#> Sexta-Feira - 19/05
#> SOMENTE ALMOÇO
#> PERNIL ASSADO
#> ARROZ/FEIJÃO
#> SALADA
#> FRUTA
```

Ou então buscar por algum dia em específico (é possível utilizar
variações dos dias, como: `segunda-feira`, `segunda feira`, `segunda` e
`seg`)

``` r
cardapio_dia("segunda-feira")
#> Segunda-Feira - 15/05
#> SOMENTE ALMOÇO
#> ISCAS ACEBOLADA
#> ARROZ/FEIJÃO
#> SALADA
#> FRUTA

cardapio_dia("segunda")
#> Segunda-Feira - 15/05
#> SOMENTE ALMOÇO
#> ISCAS ACEBOLADA
#> ARROZ/FEIJÃO
#> SALADA
#> FRUTA
```
