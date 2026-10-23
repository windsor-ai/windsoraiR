### Updating the package on CRAN

1. Bump `Version` in `DESCRIPTION`.
2. Add the changes to `NEWS.md` under a heading for the new version.
3. Update `README.Rmd` if needed, then knit it to produce `README.md`.
4. Update `cran-comments.md` with the check results and anything CRAN reviewers should know.
5. In R, from the repository folder:
   ```r
   devtools::document()
   devtools::check()           # 0 errors, 0 warnings
   devtools::check_win_devel() # optional, results are emailed to the maintainer
   devtools::release()
   ```
   `devtools::release()` asks a few questions and then uploads the package.
6. CRAN emails the maintainer a link to confirm the upload. Nothing happens until it is clicked.
7. Once CRAN accepts the release, tag it (`git tag v<version>`) and push the tag.

