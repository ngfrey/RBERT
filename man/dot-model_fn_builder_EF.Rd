% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_features.R
\name{.model_fn_builder_EF}
\alias{.model_fn_builder_EF}
\title{Define \code{model_fn} closure for \code{TPUEstimator}}
\usage{
.model_fn_builder_EF(bert_config, init_checkpoint, layer_indexes, use_tpu)
}
\arguments{
\item{bert_config}{\code{BertConfig} instance.}

\item{init_checkpoint}{Character; path to the checkpoint directory, plus
checkpoint name stub (e.g. "bert_model.ckpt"). Path must be absolute and
explicit, starting with "/".}

\item{layer_indexes}{Integer list; indexes (positive, or negative counting
back from the end) indicating which layers to extract as "output features".
(It needs to be specified here because we get them back as the model
"predictions".)}

\item{use_tpu}{Logical; whether to use TPU.}
}
\value{
\code{model_fn} closure for \code{TPUEstimator}.
}
\description{
Returns \code{model_fn} closure, which is an input to \code{TPUEstimator}.
This function is similar to \code{model_fn_builder} from run_classifier.R.
(RBERT issue #28.)
}
\details{
The \code{model_fn} function takes four parameters: \describe{
\item{features}{A list (or similar structure) that contains objects such as
\code{input_ids}, \code{input_mask}, \code{tokens},  and
\code{input_type_ids}. These objects will be inputs to the
\code{create_model} function.} \item{labels}{Not used in this function, but
presumably we need to keep this slot here.} \item{mode}{Character; value such
as "train", "infer", or "eval".} \item{params}{Not used in this function, but
presumably we need to keep this slot here.} }

The output of \code{model_fn} is the result of a
\code{tf$contrib$tpu$TPUEstimatorSpec} call.
}
\keyword{internal}
