
<!-- README.md is generated from README.Rmd. Please edit that file -->

# windsoraiR

<!-- badges: start -->
<!-- badges: end -->

The goal of `windsoraiR` is to help `R` users to access the `Windsor.ai`
`API` in a convenient way from `R`

[Windsor.ai](https://www.windsor.ai/) allows to get marketing data from
any platform. It beautifully simplifies the complexity of dealing with
multiple platforms, unlocking unified, valuable information in a format
that matters to you. For more details checkout
[onboard.windsor.ai](https://onboard.windsor.ai/).

## Installation

You can install the released version of windsoraiR from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("windsoraiR")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("windsor-ai/windsoraiR")
```

## Features

:heavy\_check\_mark: Easy access to marketing data via windsor.ai APIs

:heavy\_check\_mark: Lightweight (single dependency - jsonlite)

## Supported marketing and platforms

:heavy\_check\_mark: Google Analytics

:heavy\_check\_mark: Google Ads

:heavy\_check\_mark: Facebook Ads

:heavy\_check\_mark: Facebook organic

:heavy\_check\_mark: Bing Ads

:heavy\_check\_mark: Linkedin Ads

:heavy\_check\_mark: Hubspot

:heavy\_check\_mark: Salesforce

:heavy\_check\_mark: Google search console

:heavy\_check\_mark: Criteo

:heavy\_check\_mark: Snapchat

:heavy\_check\_mark: Tiktok

:heavy\_check\_mark: Appnexus

:heavy\_check\_mark:Campaign Manager

:heavy\_check\_mark: Twitter

:heavy\_check\_mark: Awin

:heavy\_check\_mark: Adroll

:heavy\_check\_mark: Shopify

:heavy\_check\_mark: Klaviyo

:heavy\_check\_mark: Airtable

:heavy\_check\_mark: Intercom

:heavy\_check\_mark: Zoho

:heavy\_check\_mark: Idealo

:heavy\_check\_mark: Pinterest

:heavy\_check\_mark: Appsflyer

:heavy\_check\_mark: Adobe

## Usage

### Registration

You need to get a free API key to access windsor.ai’s APIs. Register
your account first and add a datasource like facebook ads and then get
the API key. For more details check out our official API documentation
and this article. Get the API key at <https://onboard.windsor.ai>

### Minimal Example

The package currently has only one function `windsor_fetch` which will
return a `data.frame` provided that all of the arguments are supplied to
it:

-   your API key,
-   the connector,
-   date range,
-   and fields you require.

Running:

``` r
df <- windsor_fetch(api_key = "your api key",
 connector = "all",
 date_preset = "last_7d",
 fields = c("source", "campaign", "clicks",
            "medium", "sessions", "spend"))
            
```

Will return a `data.frame` from the connector `all` that blends all data
from the platforms you have connected.

``` r
glimpse(df)

Rows: 140
Columns: 6
$ data.campaign <chr> "Kampanja #1", "Myyntipäällikök…
$ data.clicks   <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ data.spend    <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ data.medium   <chr> "Unknown", "Unknown", "Unknown"…
$ data.source   <chr> "google", "google", "google", "…
$ googlesheets  <chr> "'spreadsheet_id'", "'spreadshe…
```

For more details see the API documentation at
<https://www.windsor.ai/api-fields/>.
