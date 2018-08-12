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
      h4("Square of the number:"),
      tags$b(tags$i(h4(textOutput("text1")))),
      h4("Cube of the number:"),
      tags$b(tags$i(h4(textOutput("text2")))),
      h4("Square Root of the number:"),
      tags$b(tags$i(h4(textOutput("text3")))),
      h4("Cube root of the number:"),
      tags$b(tags$i(h4(textOutput("text4"))))
      
    )
  )
))