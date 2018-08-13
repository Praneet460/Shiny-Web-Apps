library(shiny)

shinyServer(function(input, output){
  
  output$text1 = renderText(
    paste("Square of the number = ",(input$slider2)^2))
  
  output$text2 = renderText(
    paste("Cube of the number = ", (input$slider2)^3))
  
  output$text3 = renderText(
    paste("Square Root of the number = ", sqrt(input$slider2)))
  
  output$text4 = renderText(
    paste("Cube root of the number = ", (input$slider2)^(1/3)))
  
})