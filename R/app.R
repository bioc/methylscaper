# Run the application
#' methylscaper
#'
#' Runs the methylscaper Shiny app.
#'
#' @return This starts up the shiny app interface for methylscaper.
#' @import shiny
#' @import seriation
#' @importFrom seqinr read.fasta
#' @importFrom shinyjs toggleElement showElement
#' @importFrom shinyFiles shinyDirChoose shinyDirButton getVolumes
#' @importFrom grDevices dev.off pdf png cairo_pdf
#' @importFrom utils write.csv capture.output data
#' @importFrom data.table fread
#' @import seriation
#' @export
#' @examples 
#' 
#' # methylscaper()
methylscaper <- function() {
    options(shiny.maxRequestSize = 10000*1024^5)

    shinyApp(ui = ui, server = server)}
