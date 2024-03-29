#' Spectral data for LEDs of different colours
#' 
#' Names of members of the collection of emission spectra
#' \code{\link{leds.mspct}} grouped by the wavelength ranges or colors
#' at which they predominantly emit energy.
#' 
#' @details
#' The character vectors \code{"uv_leds"}, \code{"purple_leds"},
#' \code{"blue_leds"}, \code{"green_leds"}, \code{"yellow_leds"},
#' \code{"orange_leds"} and \code{"red_leds"} contain the names of the members
#' of \code{leds.mspct} with peaks of emission within the wavelength range
#' corresponding to the light colours as defined by ISO standards. Vector
#' \code{amber_leds} is the union of \code{"yellow_leds"} and
#' \code{"orange_leds"}. Vector \code{white_leds} contains the names of spectra
#' for LEDs with broad or multiple peaks of emission in the visible range.
#' Vectors \code{"uv_leds"} and \code{"ir_leds"} contain the names for LEDs with
#' peak emission at wavelengths < 400 nm and wavelengths > 700 nm, respectively.
#' Vector \code{"multi_channel_leds"} contains names of spectra for LED arrays
#' that contain LED chips of more than one colour grouped into channels that can
#' be powered, and thus controlled, independently.
#' 
#' These vectors can be used to extract subsets of spectra from
#' \code{leds.mspct}.
#' 
#' @docType data
#' @keywords datasets
#' @format A vector of character strings.
#' 
#' @aliases 'leds by color' 
#' 
#' @examples 
#' uv_leds
#' blue_leds
#' red_leds
#' white_leds
#' multi_channel_leds
#' 
#' # select LEDs emitting in the amber (yellow to orange) region
#' leds.mspct[amber_leds]
#' 
#' @seealso \code{\link{leds.mspct}}, 
#' \code{\link[photobiologyWavebands]{VIS_bands}},
#' \code{\link[photobiologyWavebands]{UV_bands}}.
#' 
"led_colors"

#' @rdname led_colors
"uv_leds"

#' @rdname led_colors
"purple_leds"

#' @rdname led_colors
"ir_leds"

#' @rdname led_colors
"blue_leds"

#' @rdname led_colors
"green_leds"

#' @rdname led_colors
"yellow_leds"

#' @rdname led_colors
"orange_leds"

#' @rdname led_colors
"red_leds"

#' @rdname led_colors
"amber_leds"

#' @rdname led_colors
"white_leds"

#' @rdname led_colors
"multi_channel_leds"

#' @rdname led_colors
"single_channel_leds"

