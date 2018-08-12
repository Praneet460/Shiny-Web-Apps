library(shiny)

shinyServer(function(input, output){
   
  output$plot1 <- renderPlot({
    
    set.seed(2018-08-12)
    number_of_points <- input$numeric
    min_X <- input$sliderX[1]
    max_X <- input$sliderX[2]
    min_Y <- input$sliderY[1]
    max_Y <- input$sliderY[2]
    data_X <- runif(number_of_points, min_X, max_X)
    data_Y <- runif(number_of_points, min_Y, max_Y)
    
    
    
    x_label <- ifelse(input$show_xlabel, "X Axis", "")
    y_label <- ifelse(input$show_ylabel, "Y Axis", "")
    title <- ifelse(input$show_title, "Random Numbers Plot", "")
    
    
    plot(data_X, data_Y, xlab = x_label, ylab = y_label, main = title, 
         xlim = c(0, 100), ylim = c(0, 100))
    
  })
  
})