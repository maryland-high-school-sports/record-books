# app.R
library(shiny)
library(tidyverse)

# Read the data
championships_data <- read_csv("championships.csv")

ui <- fluidPage(
  titlePanel("Maryland Soccer Championships Data"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("sport", "Sport", 
                  choices = c("All", unique(championships_data$sport))),
      selectInput("gender", "Gender", 
                  choices = c("All", unique(championships_data$gender))),
      selectInput("class", "Class", 
                  choices = c("All", unique(championships_data$class))),
      numericInput("year_min", "Minimum Year", 
                   min = min(championships_data$year), 
                   max = max(championships_data$year), 
                   value = min(championships_data$year)),
      numericInput("year_max", "Maximum Year", 
                   min = min(championships_data$year), 
                   max = max(championships_data$year), 
                   value = max(championships_data$year))
    ),
    
    mainPanel(
      dataTableOutput("championship_table")
    )
  )
)

server <- function(input, output, session) {
  filtered_data <- reactive({
    championships_data %>%
      filter(
        (input$sport == "All" | sport == input$sport) &
        (input$gender == "All" | gender == input$gender) &
        (input$class == "All" | class == input$class) &
        year >= input$year_min &
        year <= input$year_max
      )
  })
  
  output$championship_table <- renderDataTable({
    filtered_data() %>%
      select(year, sport, gender, class, champion, coach, finalist, team_score, opponent_score) %>%
      arrange(desc(year))
  }, options = list(pageLength = 10))
}

shinyApp(ui, server)
