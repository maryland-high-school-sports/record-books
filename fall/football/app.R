library(shiny)
library(tidyverse)
library(DT)

# Define UI for application
ui <- fluidPage(
  titlePanel("Football Data Browser"),
  
  sidebarLayout(
    sidebarPanel(
      textInput("search_term", "Search:", ""),
      helpText("Search for any term. Matches will be shown in the table below.")
    ),
    
    mainPanel(
      DTOutput("data_table")
    )
  )
)

# Define server logic
server <- function(input, output) {
  # Load data
  data <- read_csv("championships.csv", col_types = cols(.default = "c"))
  
  # Reactive expression for search results
  searched_data <- reactive({
    if (input$search_term == "") {
      data
    } else {
      data %>%
        filter(
          rowSums(
            sapply(., function(column) {
              str_detect(tolower(column), tolower(input$search_term))
            })
          ) > 0
        )
    }
  })
  
  # Render data table
  output$data_table <- renderDT({
    datatable(
      searched_data(),
      options = list(pageLength = 10, autoWidth = TRUE),
      rownames = FALSE
    )
  })
}

# Run the application 
shinyApp(ui = ui, server = server)


