#' @title Spectra acquired with Ocean Optics Maya2000 Pro
#'
#' @description Dataset containing the wavelengths and tabulated values spectral
#'   emittance for LEDs. Data for both low power single-die devices and high
#'   power LEDs arrays are included. The data are normalized to the peak of
#'   maximum spectral energy irradiance.
#'
#' @details \code{oo_maya_leds} is a character vector with indexes to members of
#'   \code{\link{leds.mspct}}.
#'
#' The variables in each member spectrum are as follows: \itemize{ \item
#' w.length (nm) \item s.e.irrad }
#'
#' @note Instrument used: Ocean Optics Maya2000 Pro single-monochromator array
#'   spectroradiometer with a Bentham cosine corrected input optics. A complex
#'   set of corrections and calibration procedure used. Raw spectral data
#'   processed with R packages 'MayaCalc' or 'ooacquire'.
#'
#' @docType data
#' @keywords datasets internal
#' @format A vector of character strings.
#'
#' @examples
#' oo_maya_leds
#'
#' @seealso \code{\link{leds.mspct}}
#' 
"oo_maya_leds"
