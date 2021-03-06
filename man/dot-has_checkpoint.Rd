% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download_checkpoint.R
\name{.has_checkpoint}
\alias{.has_checkpoint}
\title{Check whether the user already has a checkpoint}
\usage{
.has_checkpoint(model = NULL, dir = NULL, ckpt_dir = NULL)
}
\arguments{
\item{model}{Character vector. Which model checkpoint to download.}

\item{dir}{Character vector. Destination directory for checkpoints. Leave
\code{NULL} to allow RBERT to automatically choose a directory. The path is
determined from the \code{dir} parameter if supplied, followed by the
`RBERT.dir` option (set using \link{set_BERT_dir}), followed by an "RBERT"
folder in the user cache directory (determined using
\code{\link[rappdirs]{user_cache_dir}}). If you provide a \code{dir}, the
`RBERT.dir` option will be updated to that location. Note that the
checkpoint will create a subdirectory inside this \code{dir}.}

\item{ckpt_dir}{The path to the subdir where this checkpoint should
be saved. If model is given, ckpt_dir is inferred.}
}
\value{
A logical indicating whether the user already has that checkpoint in
  that location.
}
\description{
Check the specified dir (or the default dir if none is specified) for a given
model or url.
}
\keyword{internal}
