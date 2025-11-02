library(shiny)
library(ggplot2)
library(dplyr)
library(zzysdata)


data("clean_data")

ui <- fluidPage(
  titlePanel("Relative Importance of Predictors Across Sites"),

  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "selected_site",
        label = "Choose a site:",
        choices = levels(clean_data$Site),
        selected = levels(clean_data$Site)[1]
      ),
      selectInput(
        inputId = "selected_variable",
        label = "Choose a variable:",
        choices = levels(clean_data$Variable),
        selected = levels(clean_data$Variable)[1]
      )
    ),

    mainPanel(
      plotOutput("variance_plot"),
      br(),
      textOutput("info_text")
    )
  )
)

server <- function(input, output, session) {


  filtered_data <- reactive({
    clean_data %>%
      filter(Site == input$selected_site | Variable == input$selected_variable)
  })


  output$variance_plot <- renderPlot({
    ggplot(filtered_data(), aes(x = Variable, y = Variance, fill = Variable)) +
      geom_bar(stat = "identity") +
      facet_wrap(~Site) +
      labs(
        x = "Variable",
        y = "Variance Explained (%)",
        title = paste("Variance Explained for", input$selected_site)
      ) +
      theme_minimal() +
      theme(plot.title = element_text(hjust = 0.5, face = "bold"))
  })


  output$info_text <- renderText({
    paste("You selected site:", input$selected_site,
          "and variable:", input$selected_variable,
          "\nThe bar chart shows the variance explained by each variable for the selected site.")
  })
}

# run App
shinyApp(ui, server)
