library(shiny)

shinyServer(function(input, output){
  
  output$text1 = renderText((input$slider2)^2)
  output$text2 = renderText((input$slider2)^3)
  output$text3 = renderText(sqrt(input$slider2))
  output$text4 = renderText((input$slider2)^(1/3))
  
})