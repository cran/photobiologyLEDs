#' @details
#' Data for emission spectra of different types of LEDs.
#'
#' The package contains one collection of spectra for different LEDSs all of them
#' measured at room temperature and a series of vectors to be used as indexes to
#' extract different subsets of spectra. In many cases spectral data are normalized to
#' spectral energy irradiance equal to one at the wavelength of maximum spectral
#' energy irradiance (strongest emission peak).
#'
#' @section Warning!:
#' None of the spectral data included in this package are based on supplier's
#' specifications and are only for information. The exact emission spectrum
#' depends to some extent on testing conditions, but more importantly among
#' individual LED dies. Spectral specifications are usually given by typical and
#' boundary values. Furthermore, most manufacturers classify LEDs of a given
#' type into "bins" with slightly different optical and electrical
#' characteristics. In other words, the data provided here are not a substitute
#' for actual measurements of radiation emission and spectrum of the LEDs
#' actually used in a given piece of scientific research. For less demanding
#' situations the data are in most cases reliable enough but perfect agreement
#' with measurements on other LEDs of the same exact type should not be
#' expected.
#'
#' @import photobiology
#'
#' @examples
#' library(photobiology)
#' library(photobiologyWavebands)
#' library(ggspectra)
#' 
#' names(leds.mspct)
#' 
#' q_ratio(leds.mspct$white, Blue(), Red())
#' 
#' peaks(leds.mspct$white, span = 101)
#' 
#' plot(leds.mspct$white)
#' 
#' q_ratio(leds.mspct$Q36_4000K, Blue(), Red())
#' 
#' \dontrun{
#' plot(leds.mspct$Q36_4000K)
#' }
#' 
#' q_ratio(leds.mspct$NS6L183AT_H1, Blue(), Red())
#' 
#' \dontrun{
#' plot(leds.mspct$NS6L183AT_H1)
#' }
#' 
#' \dontrun{
#' plot(leds.mspct$NS6L183AT_H1, unit.out = "photon")
#' }
#' 
#' \dontrun{
#' plot(leds.mspct$NS6L183AT_H1, 
#'      range = VIS(), 
#'      w.band = VIS_bands(),
#'      span = 101)
#' }
#' 
"_PACKAGE"
