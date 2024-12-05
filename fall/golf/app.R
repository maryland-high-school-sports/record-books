
library(shiny)
library(tidyverse)

# Load the data
championships <- read_csv("championships.csv")

# UI
ui <- fluidPage(
  titlePanel("Golf Championships Data Explorer"),
  
  sidebarLayout(
    sidebarPanel(
      textInput("search", "Search:", placeholder = "Type a keyword..."),
      selectInput("column", "Search in column:", 
                  choices = names(championships), 
                  selected = names(championships)[1]),
      actionButton("reset", "Reset Table")
    ),
    
    mainPanel(
      dataTableOutput("table")
    )
  )
)

# Server
server <- function(input, output, session) {
  
  # Reactive filtered data
  filtered_data <- reactive({
    if (input$search == "") {
      championships
    } else {
      championships %>%
        filter(str_detect(!!sym(input$column), regex(input$search, ignore_case = TRUE)))
    }
  })
  
  # Reset button logic
  observeEvent(input$reset, {
    updateTextInput(session, "search", value = "")
    updateSelectInput(session, "column", selected = names(championships)[1])
  })
  
  # Render data table
  output$table <- renderDataTable({
    filtered_data()
  })
}

# Run the app
shinyApp(ui, server)

