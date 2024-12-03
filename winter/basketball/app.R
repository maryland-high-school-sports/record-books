library(shiny)
library(tidyverse)

# Load data
data_file <- "championships.csv"
data <- read_csv(data_file, col_types = cols(
  YEAR = col_character()))


# Define UI
ui <- fluidPage(
  titlePanel("MPSSAA Basketball Championship Data Browser"),
  sidebarLayout(
    sidebarPanel(
      textInput("search", "Search:", ""),
      actionButton("clear", "Clear Search")
    ),
    mainPanel(
      tableOutput("data_table")
    )
  )
)

# Define Server
server <- function(input, output, session) {
  # Reactive dataset based on search
  filtered_data <- reactive({
    req(data)
    if (input$search != "") {
      data %>% 
        filter_all(any_vars(str_detect(., regex(input$search, ignore_case = TRUE))))
    } else {
      data
    }
  })
  
  # Display the filtered data
  output$data_table <- renderTable({
    filtered_data()
  })
  
  # Clear search input
  observeEvent(input$clear, {
    updateTextInput(session, "search", value = "")
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
