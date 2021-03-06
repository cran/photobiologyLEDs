#' @title Spectral irradiance for diverse LEDs
#'
#' @description A collection of emission spectra of light-emitting-diodes
#'   from different suppliers.
#'
#' @details The \code{"source_mspct"} object contains \code{"source_spct"}
#'   objects with spectral emission data.
#'
#'   The variables in each member spectrum are as follows: \itemize{ \item
#'   w.length (nm) \item s.e.irrad (absolute or normalized). }
#'   
#'   When the exact distance from LED to cosine diffuser is not known precisely
#'   or when the driving current is unknown, the spectra have been normalized
#'   to spectral energy irradiance equal to 1 W m-2 nm-1 at the wavelength
#'   of maximum spectral irradiance. When the details of the measurement
#'   conditions are know, this are given and the data are expressed in absolute
#'   spectral irradiance units. In any case, it needs to be taken into account
#'   than even in these cases measuremnts have not been done in an optical 
#'   bench, so values of expectral irradiance are subject to errors due to
#'   possible missalignment. The shape of the spectra, in contrast can be
#'   relied upon as measurements were done with well calibrated instruments.
#'
#' @note Please see the metadata in each spectrum and the help pages 
#' corresponding to each supplier for contact information. The metadate is
#' stored in attributes and can accessed with functions 
#' \code{\link[photobiology]{getWhatMeasured}} and
#' \code{\link[photobiology]{getWhenMeasured}}. Sone spectra also contain
#' information on the measurement accessible with 
#' \code{\link[photobiology]{getInstrDesc}} and
#' \code{\link[photobiology]{getInstrSettings}}.
#'
#' @seealso \code{\link{oo_maya_leds}}
#'
#' @docType data
#' @keywords datasets
#' @format A \code{"source_mspct"} object containing 51
#'   \code{"source_spct"} objects.
#' 
#' In each of the member spectra, the variables are as follows:
#' \itemize{
#'   \item w.length (nm)  
#'   \item s.e.irrad (W m-2 nm-1)
#' }
#'
#' @examples
#' library(photobiology)
#' library(ggspectra)
#' 
#' names(leds.mspct)
#' 
#' leds.mspct$white
#' 
#' cat(getWhatMeasured(leds.mspct$white))
#' 
#' peaks(leds.mspct$white, span = 100)
#' 
#' range(leds.mspct$white)
#' 
#' stepsize(leds.mspct$white)
#' 
#' plot(leds.mspct$white)
#' 
#' intersect(led_engin, blue_leds)
#' 
#' leds.mspct[intersect(led_engin, blue_leds)]
#' 
"leds.mspct"
