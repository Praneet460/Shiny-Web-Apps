library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Predict Horsepower from MPG"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderMPG", "What is the MPG of the car?", 10, 35, value = 20),
      
      checkboxInput("showModel1", tags$b(tags$i("Show/Hide Model 1")), value = TRUE),
      checkboxInput("showModel2", tags$b(tags$i("Show/Hide Model 2")), value = TRUE),
      
      checkboxInput("show_xlab", tags$b(tags$i("Show/Hide X Axis Label")), value = TRUE),
      checkboxInput("show_ylab", tags$b(tags$i("Show/Hide Y Axis Label")), value = TRUE),
      checkboxInput("show_title", tags$b(tags$i("Show/Hide Title")), value = TRUE),
      
      submitButton("Submit")
      
    ),
    mainPanel(
      plotOutput("plot1", brush = "brush1"),
      tags$u(h3("Predicted Horsepower from Model 1:")),
      tags$b(tags$i(textOutput("pred1"))),
      tags$u(h3("Predicted Horsepower from Model 2:")),
      tags$b(tags$i(textOutput("pred2"))),
      
      br(),

      fluidRow(
        column(width=5, h3("Actual Dataset"), tableOutput("data"))
        
        
      )
      
    )
   
  )
  
  
))