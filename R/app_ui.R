#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),

 htmlTemplate("inst/app/www/template.html",
    button = actionButton("down_button", "Download PNG"),
    button_svg = actionButton("down_button_svg", "Download SVG"),
    slider = sliderInput("x", "X", 1, 100, 50),
    # d3 = htmltools::includeScript("inst/app/www/index.js"),
    # shiny_app = htmltools::includeScript("inst/app/www/shiny_app.js"),
    # dnd = htmltools::includeScript("www/dndTree.js"),
    # d3_context = htmltools::includeScript("www/d3-context-menu.js"),
    # under_score = htmltools::includeScript("www/underscore-min.js"),
    # jq = htmltools::includeScript("www/jquery.js"),
    # fast_click = htmltools::includeScript("www/fastclick.js"),
    # foundation = htmltools::includeScript("www/foundation.min.js"),
    # download_svg = htmltools::includeScript("www/svgDownload.js"),
    # file_saver = htmltools::includeScript("www/FileSaver.js"),
    # canvas_js = htmltools::includeScript("www/canvas-to-blob.js"),
    # d3_css = htmltools::includeCSS("www/d3-context-menu.css"),
    # foundation_css = htmltools::includeCSS("www/foundation.css"),
    # app_css = htmltools::includeCSS("www/app.css"),
)
    # Your application UI logic
  
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    system.file("app/www", package = "tree")
  )

  tags$head(
    # favicon(),
    # bundle_resources(
    #   path = app_sys("app/www"),
    #   app_title = "tree"
    # ),
    tags$script(src = "www/index.js"),
    tags$link(rel = "stylesheet", type = "text/css", href = "www/app.css"),
    tags$link(rel = "stylesheet", type = "text/css", href = "www/d3-context-menu.css"),
    tags$link(rel = "stylesheet", type = "text/css", href = "www/foundation.css"),
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
