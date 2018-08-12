library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Tabs!"),
  sidebarLayout(
    sidebarPanel(
      textInput("box1", "Enter Tab 1 Text", value = "Tab 1!"),
      textInput("box2", "Enter Tab  2 Text", value = "Tab 2!"),
      textInput("box3", "Enter Tab 3 Text", value = "Tab 3!"),
      
      submitButton("Submit")
    ),
    mainPanel(
      tabsetPanel(type = "tabs",
               tabPanel("Tab 1", br(), tags$b(tags$i(textOutput("out1")))),
               tabPanel("Tab 2", br(), tags$b(tags$i(textOutput("out2")))),
               tabPanel("Tab 3", br(), tags$b(tags$i(textOutput("out3"))))
      
    )
  )
)
  
))