% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/markdown.R
\name{commonmark}
\alias{commonmark}
\alias{markdown_html}
\alias{cmark_jg}
\alias{markdown}
\alias{markdown_xml}
\alias{markdown_man}
\alias{markdown_commonmark}
\alias{markdown_text}
\alias{markdown_latex}
\title{Parse and render markdown text}
\usage{
markdown_html(text, hardbreaks = FALSE, smart = FALSE,
  max_strikethrough = FALSE, normalize = FALSE, sourcepos = FALSE,
  extensions = FALSE)

markdown_xml(text, hardbreaks = FALSE, smart = FALSE,
  max_strikethrough = FALSE, normalize = FALSE, sourcepos = FALSE,
  extensions = FALSE)

markdown_man(text, hardbreaks = FALSE, smart = FALSE,
  max_strikethrough = FALSE, normalize = FALSE, width = 0,
  extensions = FALSE)

markdown_commonmark(text, hardbreaks = FALSE, smart = FALSE,
  max_strikethrough = FALSE, normalize = FALSE, width = 0,
  extensions = FALSE)

markdown_text(text, hardbreaks = FALSE, smart = FALSE,
  max_strikethrough = FALSE, normalize = FALSE, width = 0,
  extensions = FALSE)

markdown_latex(text, hardbreaks = FALSE, smart = FALSE,
  max_strikethrough = FALSE, normalize = FALSE, width = 0,
  extensions = FALSE)
}
\arguments{
\item{text}{Markdown text}

\item{hardbreaks}{Treat newlines as hard line breaks. If this option is specified, hard wrapping is disabled
regardless of the value given with \code{width}.}

\item{smart}{Use smart punctuation. See details.}

\item{max_strikethrough}{Render text surrounded by any number of tildes as strikethrough (default is to
interpret only double-tildes as strikehrough).}

\item{normalize}{Consolidate adjacent text nodes.}

\item{sourcepos}{Include source position attribute in output.}

\item{extensions}{Enables Github extensions. Can be \code{TRUE} (all) \code{FALSE} (none) or a character
vector with a subset of available \link{extensions}.}

\item{width}{Specify wrap width (default 0 = nowrap).}
}
\description{
Converts markdown text to several formats using John MacFarlane's \href{https://github.com/jgm/cmark}{cmark}
reference implementation. Supported output formats include \code{html}, \code{latex}, groff \code{man}, and normalized
"commonmark" markdown. In addition the markdown parse tree can be returned in xml format.
}
\details{
Support for extensions (including tables and autolink) is provided via the Github
\href{https://github.com/github/cmark}{fork} of cmark. For now these are opt-in and have to be
enabled with the \code{extensions} parameter. See also the manual page on \link{extensions}.

When smart punctuation is enabled, straight double and single quotes will be rendered as curly quotes,
depending on their position. Moreover \code{--} will be rendered as -- (en-dash), \code{---} will be
rendered as --- (em-dash), and \code{...} will be rendered as ... (ellipses).
}
\examples{
md <- readLines("https://raw.githubusercontent.com/yihui/knitr/master/NEWS.md")
html <- markdown_html(md)
xml <- markdown_xml(md)
man <- markdown_man(md)
tex <- markdown_latex(md)
cm <- markdown_commonmark(md)
text <- markdown_text(md)
}
