#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
  	js_data <- shiny::reactive({
		json_data <- my_dataset
		to_json <- jsonlite::toJSON(json_data)
		# print(to_json)
		to_json
	})

	shiny::observe({
		session$sendCustomMessage("json_data", js_data())
	})

    shiny::observe({
        req(input$down_button)
        session$sendCustomMessage("down_tree_png", input$down_button)
    })
    shiny::observe({
        req(input$down_button_svg)
        session$sendCustomMessage("down_tree_svg", input$down_button_svg)
    })
}


