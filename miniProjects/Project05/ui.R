library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Visualize Many Models"),
  sidebarLayout(
    
    sidebarPanel(
      h3("Slope"),
      tags$b(tags$i(textOutput("slopeOut"))),
      h3("Intercept"),
      tags$b(tags$i(textOutput("intOut"))),
      br(),
      submitButton("Submit")
      
      
    ),
    mainPanel(
      
      plotOutput("plot1", brush = brushOpts(
        id = "brush1", fill = "#9cf"
      )),
      
      fluidRow(
        column(width = 5, tableOutput("data")),
        column(width = 5, 
               tableOutput("data_brush"))
      )
      
    )
    
    
    
  )
  
))