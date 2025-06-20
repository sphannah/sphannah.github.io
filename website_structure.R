###  Define sections and their placeholder posts
posts <- list(
  macro = c("gdp-trend.html", "debt-cycles.html"),
  finance = c("shadow-banking.html", "us-yield-curve.html"),
  fantasy = c("gw12-optimal-picks.html", "transfer-strategy.html")
)

# Create folders and dummy HTML files
for (section in names(posts)) {
  dir.create(section, showWarnings = FALSE)
  for (post in posts[[section]]) {
    filepath <- file.path(section, post)
    writeLines(
      sprintf("<!DOCTYPE html><html><head><title>%s</title></head><body><h1>Coming Soon: %s</h1></body></html>",
              tools::file_path_sans_ext(post),
              tools::toTitleCase(gsub("-", " ", tools::file_path_sans_ext(post)))),
      filepath
    )
  }
}