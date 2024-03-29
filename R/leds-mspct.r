#' @title Spectral irradiance for diverse LEDs
#'
#' @description A collection of emission spectra of light-emitting-diodes
#'   from different suppliers.
#'
#' @details The \code{"leds.mspct"} object contains \code{"source_spct"} objects
#'   with spectral irradiance data. As the exact distance from LED to cosine
#'   diffuser and/or the the driving current vary among spectra, they have been
#'   all normalized to the wavelength of maximum spectral energy irradiance.
#'   When the details of the measurement conditions are know, these are stored
#'   as metadata attributes. In any case, it needs to be taken into account than even
#'   in these cases measurements have not been done in an optical bench, so
#'   values of spectral irradiance are subject to errors due to possible
#'   misalignment. The shape of the spectra, in contrast can be relied upon as
#'   measurements were done with well calibrated instruments.
#'   
#'   The output of LEDs at a given current decreases as their temperature
#'   increases. The wavelength at the peak of emission can depend on the
#'   temperature and current, but shifts tend to be only a couple of nanometres.
#'   In LED arrays with heterogeneous LED chips or white LEDs based on secondary
#'   emission from phosphor the shave of the spectrum can slightly change
#'   depending on the drive current and temperature.
#'   
#'   There is variation among LEDs of the same type, specially with respect
#'   wavelength and light output. The data included are for individual LEDs and
#'   can be expected to differ to some extent from the typical values in the
#'   manufacturers specifications. Some of the LEDs for which data are included
#'   are only of historical interest as their production has been discontinued,
#'   usually replaced by new types with enhanced performance. When known, the
#'   approximate "vintage" is provided in the metadata.
#'   
#'   The spectral data are not expressed at constant wavelength intervals. Not
#'   only the intervals vary in the raw data from the array spectrometer, but in
#'   addition function \code{\link[photobiology]{thin_wl}} has been applied to
#'   reduce the storage space needed. In brief the wavelength interval has been
#'   increased as much as possible in those regions of the spectrum that lack
#'   detailed features (such as linear slopes and wavelength regions with zero
#'   light emission).
#'
#' @note Please see the help page for \code{\link{led_brands}} for LED 
#' suppliers' contact information. 
#' Please see the metadata in each spectrum for other information. 
#' These metadata are
#' stored as attributes of the individual \code{source_spct} objects and can 
#' accessed with functions
#' \code{\link{comment}},
#' \code{\link[photobiology]{getWhatMeasured}},
#' \code{\link[photobiology]{getWhenMeasured}} and
#' \code{\link[photobiology]{getHowMeasured}}.
#' Some of the spectra also contain
#' information on the measurement accessible with 
#' \code{\link[photobiology]{getInstrDesc}} and
#' \code{\link[photobiology]{getInstrSettings}}.
#' See also the \code{\link{comment}} attribute of the \code{leds.mspct} 
#' object.
#'
#' @seealso \code{\link{oo_maya_leds}}
#'
#' @docType data
#' @keywords datasets
#' @format A \code{"source_mspct"} object containing 74 
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
#' 
#' names(leds.mspct)
#' 
#' leds.mspct$Nichia_NS6L183AT_H1_sw
#' 
#' cat(getWhatMeasured(leds.mspct$Nichia_NS6L183AT_H1_sw))
#' 
#' peaks(leds.mspct$Nichia_NS6L183AT_H1_sw, span = 100)
#' 
#' wl_range(leds.mspct$Nichia_NS6L183AT_H1_sw)
#' 
#' wl_stepsize(leds.mspct$Nichia_NS6L183AT_H1_sw)
#' 
#' intersect(LedEngin_leds, blue_leds)
#' 
#' leds.mspct[intersect(LedEngin_leds, blue_leds)]
#' 
"leds.mspct"
