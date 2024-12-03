library(shiny)
library(tidyverse)

# Define UI for application
ui <- fluidPage(
  titlePanel("Lacrosse Data Viewer"),
  
  sidebarLayout(
    sidebarPanel(
      textInput("search", "Search:", placeholder = "Enter a keyword to search"),
      selectInput(
        "columns",
        "Select Columns to View:",
        choices = NULL,
        multiple = TRUE,
        selected = NULL
      )
    ),
    mainPanel(
      tableOutput("dataTable")
    )
  )
)

# Define server logic
server <- function(input, output, session) {
  # Load the CSV file
  championships <- read_csv("championships.csv")
  
  # Update column selection choices dynamically
  updateSelectInput(session, "columns", choices = colnames(championships))
  
  # Filter and display data based on user input
  output$dataTable <- renderTable({
    data <- championships
    
    # Filter by search term if provided
    if (input$search != "") {
      data <- data %>%
        filter_all(any_vars(str_detect(., regex(input$search, ignore_case = TRUE))))
    }
    
    # Select specified columns if chosen
    if (!is.null(input$columns) && length(input$columns) > 0) {
      data <- data %>%
        select(all_of(input$columns))
    }
    
    data
  }, striped = TRUE, hover = TRUE, bordered = TRUE)
}

# Run the application 
shinyApp(ui = ui, server = server)

