\name{translate_color}
\alias{translate_color}
\title{Translate color}
\description{
Translate some colours from Spanish to English
}
\usage{
translate_color(color)
}
\arguments{
  \item{color}{[\code{character}] Colour to be translated}
}
\details{
Only a few fundamental colours are implemented in the function:
black (\emph{negro/a}), grey (\emph{gris}), white (\emph{blanco/a}), red (\emph{rojo/a}),
pink (\emph{rosa}), green (\emph{verde}), blue (\emph{azul}), purple (\emph{morado/a}),
brown (\emph{marrón}), orange (\emph{naranja}), yellow (\emph{amarillo/a}).
}
\value{
Character string with the color in English (see details).

If provided color is not implemented, it raises an error.
}
\author{
Víctor Moreno-González <vmorg@unileon.es
}

\examples{

translate_color("rojo")
translate_color("Marrón")   # It deals with uppercases
translate_color("amarilla") # It deals with female and male names
}
