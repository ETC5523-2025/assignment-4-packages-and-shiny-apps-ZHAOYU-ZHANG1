devtools::install()
devtools::load_all()
plot_scatter(mtcars, "mpg", "wt")
devtools::check()

usethis::use_directory("inst")
usethis::use_directory("inst/app")


usethis::use_mit_license("Zhaoyu Zhang")
usethis::use_readme_rmd()

usethis::use_data_raw()

devtools::document()

library(zzysdata)

run_app()

usethis::use_pkgdown()
pkgdown::build_site()

usethis::use_pkgdown()

library(pkgdown)

# webstie
build_site()

usethis::use_vignette("exploring_clean_data")

devtools::load_all()
plot_scatter(mtcars, "mpg", "wt")

usethis::use_pkgdown()

pkgdown::build_site()

install.packages("pkgdown")
pkgdown::build_site()
list.files("docs", recursive = TRUE)

devtools::load_all()
plot_bar(mtcars, "cyl", "mpg")

devtools::check()
