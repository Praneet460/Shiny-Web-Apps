library(shiny)

shinyUI(fluidPage(
  titlePanel("Plot Random Numbers"),
  sidebarLayout(
   sidebarPanel(
     
     numericInput("numeric", "How many Random Numbers Should be Plotted?",
                  value = 100, min=1, max=1000, step = 1),
     
     sliderInput("sliderX", "Pick Minimum and Maximum X Values",
                 0, 100, value = c(0, 100)),
     sliderInput("sliderY", "Pick Minimum and Maximum Y Value",
                 0, 100, value = c(0, 100)),
     
     
     checkboxInput("show_xlabel", tags$i(tags$b("Show/Hide X Axis Label")), value = TRUE),
     checkboxInput("show_ylabel", tags$i(tags$b("Show/Hide Y Axis Label")), value = TRUE),
     checkboxInput("show_title", tags$i(tags$b("Show/Hide Title")), value = FALSE),
     
     submitButton("Submit")
   ),
   mainPanel(
     
     h3("Graph of Random Points"),
     plotOutput("plot1")
   )
  )
))