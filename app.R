library(shiny)

ui <- fluidPage(
  titlePanel("Hello Shiny!"),
  sidebarLayout(
    sidebarPanel(
      textInput("name", "Enter your name:", value = "World")
    ),
    mainPanel(
      textOutput("greeting")
    )
  )
)

server <- function(input, output) {
  output$greeting <- renderText({
    paste("Hello,", input$name, "!")
  })
}

shinyApp(ui = ui, server = server)
