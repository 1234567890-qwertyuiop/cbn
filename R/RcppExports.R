# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

extract_words <- function(words, vectors_file, verbose = TRUE, report_every = 100000L) {
    .Call('_cbn_extract_words', PACKAGE = 'cbn', words, vectors_file, verbose, report_every)
}

