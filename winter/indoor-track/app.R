# Load necessary libraries
library(shiny)
library(tidyverse)

# Read the CSV file
data <- read_csv("championships.csv")

# Define the UI
ui <- fluidPage(
  titlePanel("Indoor Track Championships Data Viewer"),
  sidebarLayout(
    sidebarPanel(
      textInput("search", "Search:", ""),
      selectInput(
        "column", 
        "Select column to search:", 
        choices = colnames(data),
        selected = colnames(data)[1]
      ),
      numericInput("rows", "Rows to display:", 10, min = 1, max = nrow(data)),
      downloadButton("downloadData", "Download Filtered Data")
    ),
    mainPanel(
      tableOutput("table")
    )
  )
)

# Define the server logic
server <- function(input, output) {
  # Reactive expression to filter the data based on user input
  filtered_data <- reactive({
    if (input$search == "") {
      data %>%
        head(input$rows)
    } else {
      data %>%
        filter(str_detect(!!sym(input$column), fixed(input$search, ignore_case = TRUE))) %>%
        head(input$rows)
    }
  })

  # Render the table
  output$table <- renderTable({
    filtered_data()
  })

  # Provide data download
  output$downloadData <- downloadHandler(
    filename = function() {
      paste("filtered_data_", Sys.Date(), ".csv", sep = "")
    },
    content = function(file) {
      write_csv(filtered_data(), file)
    }
  )
}

# Run the app
shinyApp(ui = ui, server = server)
