#' Spectral data for LEDs of different colors
#' 
#' Datasets containing the wavelengths and tabulated values spectral emittance 
#' for the light emitting diodes (LEDs) from various suppliers. 
#' Data are normalized to one at the wavelength of maximum emission.
#' 
#' The variables are as follows:
#' \itemize{
#'   \item w.length (nm)  
#'   \item s.e.irrad (W m-2 nm-1)
#' }
#' 
#' @docType data
#' @keywords datasets
#' @format A vector of character strings.
#' 
#' @aliases amber_leds blue_leds green_leds red_leds white_leds multichannel_leds
#' 
#' @examples 
#' uv_leds
#' blue_leds
#' green_leds
#' amber_leds
#' red_leds
#' white_leds
#' multichannel_leds
#' # select LEDs emitting in the amber, yellow, orange region
#' leds.mspct[amber_leds]
#' 
"uv_leds"
