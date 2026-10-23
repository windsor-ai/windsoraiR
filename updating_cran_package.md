
### Updating the package on cran

1. Edit the DESCRIPTION to update version number, depending on the changes.
2. Edit NEWS.md to briefly explain the changes.
3. Updated README.Rmd if needed
4. Knit README.Rmd to produce README.md
5. Run devtools::check() and devtools::document()
if everything goes well then run
devtools::release()
it is a straight forward process then where you get to answer some question and do some additional steps that devtools::release() reminds you of.
if you want to submit to CRAN finally after this (this is the last step in the devtools::release() process), then the package maintainer has to be changed.
Add yourself as the new maintainer in the DESCRIPTION file, with role = c("aut", "cre"), and make the former maintainer aut only.