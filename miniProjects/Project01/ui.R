library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Get Square, Cube, Square Root and Cube Root"),
  sidebarLayout(
    sidebarPanel(
      h3("Choose the number"),
      sliderInput("slider2", "Slide Me!", 0, 100, 0),
      submitButton("Submit")
    ),
    mainPanel(
      tags$u(tags$i(h3("Results"))),
      br(),
      
      tags$b(tags$i(h4(textOutput("text1")))),
      br(),
      
      tags$b(tags$i(h4(textOutput("text2")))),
      br(),
      
      tags$b(tags$i(h4(textOutput("text3")))),
      br(),
      
      tags$b(tags$i(h4(textOutput("text4")))),
      br()
      
    )
  )
))