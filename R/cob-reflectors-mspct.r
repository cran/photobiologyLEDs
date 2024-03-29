#' @title LEDs with reflectors
#'
#' @description A collection of emission spectra of a light-emitting-diode
#'   when combined with different reflectors.
#'
#' @details The \code{"COB_reflectors.mspct"} object contains
#'   \code{"source_spct"} objects with spectral irradiance data with the same
#'   Optisolis COB LED from Nichia, and different reflectors from the Mirella-G2
#'   series from LEDiL . Distance from LED to cosine diffuser was 159 mm.
#'   Spectra are not normalized. It needs to be taken into account than even in
#'   these cases measurements have not been done in an optical bench, so values
#'   of spectral irradiance are subject to errors due to possible
#'   misalignment.
#'   
#'   The COB LED used is the chip-on-board (COB) Optisolis type
#'   NFCWL036B-V3-Rfcb0 from Nichia with CRI > 95. Nominal electrical power of
#'   10.3 W at nominal current of 270 mA. Spectra are for the COB over-driven at
#'   350 mA, which is possible with enough cooling, but not recommended.
#'   
#'   The spectral data are not expressed at constant wavelength intervals. Not
#'   only the intervals vary in the raw data from the array spectrometer, but in
#'   addition function \code{\link[photobiology]{thin_wl}} has been applied to
#'   reduce the storage space needed. In brief the wavelength interval has been
#'   increased as much as possible in those regions of the spectrum that lack
#'   detailed features (such as linear slopes and wavelength regions with zero
#'   light emission).
#'
#' @note Please see the metadata in each spectrum. These metadata are
#' stored as attributes of the individual \code{source_spct} objects and can accessed with functions 
#' \code{\link{comment}},
#' \code{\link[photobiology]{getWhatMeasured}},
#' \code{\link[photobiology]{getWhenMeasured}}, 
#' \code{\link[photobiology]{getHowMeasured}}, 
#' \code{\link[photobiology]{getInstrDesc}} and
#' \code{\link[photobiology]{getInstrSettings}}.
#' See also the \code{\link{comment}} attribute of the \code{COB_reflectors.mspct} 
#' object.
#' 
#' @docType data
#' @keywords datasets
#' @format A \code{"source_mspct"} object containing 4
#'   \code{"source_spct"} objects.
#' 
#' In each of the member spectra, the variables are as follows:
#' \itemize{
#'   \item w.length (nm)  
#'   \item s.e.irrad (W m-2 nm-1)
#' }
#' 
#' @references \url{https://www.ledil.com/} \url{https://www.nichia.co.jp/en/}
#'
#' @examples
#' library(photobiology)
#' 
#' names(COB_reflectors.mspct)
#' 
#' # calculate photon irradiances in umol m-2 s-2 and relative to no reflector
#' irrads <- q_irrad(COB_reflectors.mspct, scale.factor = 1e6)
#' irrads$Q_Total_rel <- irrads$Q_Total / min(irrads$Q_Total)
#' irrads
#' 
"COB_reflectors.mspct"
