library(shiny)
library(tidyverse)

# Define UI
ui <- fluidPage(
  titlePanel("Volleyball Championships Data Viewer"),
  sidebarLayout(
    sidebarPanel(
      textInput("search", "Search:", ""),
      width = 3
    ),
    mainPanel(
      tableOutput("data_table"),
      width = 9
    )
  )
)

# Define server logic
server <- function(input, output) {
  # Load the CSV data
  data <- read_csv("championships.csv", show_col_types = FALSE)
  
  # Reactive data filtered by search
  filtered_data <- reactive({
    if (input$search == "") {
      data
    } else {
      search_term <- tolower(input$search)
      data %>%
        filter(across(everything(), ~ str_detect(tolower(as.character(.)), search_term)))
    }
  })
  
  # Render the filtered table
  output$data_table <- renderTable({
    filtered_data()
  })
}

# Run the app
shinyApp(ui, server)
