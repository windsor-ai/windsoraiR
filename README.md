
<!-- README.md is generated from README.Rmd. Please edit that file -->

# windsoraiR

<!-- badges: start -->
<!-- badges: end -->

The goal of `windsoR` is to help `R` users to access the `Windsor.ai`
`API` in a convenient way from `R`

[Windsor.ai](https://www.windsor.ai/) allows to get marketing data from
any platform. It beautifully simplifies the complexity of dealing with
multiple platforms, unlocking unified, valuable information in a format
that matters to you. For more details checkout
[onboard.windsor.ai](https://onboard.windsor.ai/).

## Installation

~~You can install the released version of windsoraiR from~~
[CRAN](https://CRAN.R-project.org) with:

~~install.packages(“windsoraiR”)~~

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("windsor-ai/windsoraiR")
```

## Usage

The package currently has only one function `windsor_fetch` which will
return a `data.frame` provided that all of the arguments are supplied to
it: your API key, the connector, date range, and fields you require.
