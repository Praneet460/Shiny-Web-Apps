library(shiny)

shinyServer(function(input, output){
  
  colm <- reactive({
    as.numeric(input$var)
  })
  
  x_lab <- reactive({
    names(iris[colm()])
  })
  
  file_ext <- reactive({
    switch(input$data_dwnld_type,
           "Excel (CSV)" = "csv", "Text (TSV)" = "txt",
           "Text (Space Seperated)" = "txt", "Doc" = "doc")
  })
  
  output$myhist = renderPlot({
    
    hist(iris[,colm()], breaks = seq(0, max(iris[,colm()]), l=input$bins+1), col = input$color, main = "Histogram of Iris Dataset", xlab = x_lab())
    
    
  })
  
  output$data <- renderTable({
    
    
    iris[colm()]
  })
  
  output$str <- renderPrint({
    
    str(iris)
  })
  
  output$summary <- renderPrint({
    
    summary(iris)
  })
  
  output$actualdataset <- renderTable(
    iris
  )
  
  output$x_label <- renderText(
    paste("Data set variable/column name is ", x_lab())
  )
  
  output$col_name <- renderText(
    paste("Color of histogram is ", input$color)
  )
  
  output$bin_nums <- renderText(
    paste("Number of histogram BINs is ", input$bins)
  )
  
  output$down <- downloadHandler(
    # Specify the filename
    filename = function(){
      
      paste("iris_hist_plot",input$dwnld_type, sep = ".")
    },
    content = function(file){
      #  open the device
      if (input$dwnld_type == "png")
        png(file)
      else
        pdf(file)
      # create the plot
      hist(iris[,colm()], breaks = seq(0, max(iris[,colm()]), l=input$bins+1), col = input$color, main = "Histogram of Iris Dataset", xlab = x_lab())
      # close the device
      dev.off()
    }
  )
  
  output$downloadData <- downloadHandler(
    # specify file name
    filename = function(){
      paste("iris_dataset", file_ext(), sep = ".")
    },
    content = function(file) {
      sep <- switch(
        input$data_dwnld_type, "Excel (CSV)" = ",", "Text (TSV)" = "\t",
        "Text (Space Seperated)" = " ", "Doc" = " ")
      write.table(iris, file, sep = sep, row.names = FALSE)
      
    }
  )
  
})