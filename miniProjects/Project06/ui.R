library(shiny)

shinyUI(fluidPage(
  
  titlePanel(
    title = tags$u(h2("Iris Dataset", align="center"))
  ),
  sidebarLayout(
    
    sidebarPanel(
      selectInput("var", tags$b("1.Select the variable from the iris dataset"), choices = c("Sepal.length" = 1, "Sepal.Width" = 2, "Petal.length" = 3, "Petal.Width" = 4)),
      br(),
      sliderInput("bins", "2. Select the number of BINs for histogram", min = 5, max = 25, value = 10),
      br(),
      radioButtons("color", "3. Select the color of the histogram", choices=c("Green", "Red", "Yellow"), selected = "Red"),
      helpText("Select the download format"),
      radioButtons("dwnld_type", "4. Select the plot file type", choices = c("png", "pdf")),
      br(),
      helpText(" After selecting the download format, Click on the download button to download actual Iris dataset"),
      radioButtons("data_dwnld_type", "Format Type:",
                   choices = c("Excel (CSV)", "Text (TSV)",
                               "Text (Space Separated)",
                               "Doc")),
      br(),
      downloadButton("downloadData", "Download Iris Dataset")
 
      
      
    ),
    mainPanel(
      tabsetPanel(
        type = "tab",
        
        tabPanel("Summary", 
                 tags$b(verbatimTextOutput("summary"))
                 
                 ),
        tabPanel("Structure", tags$b(verbatimTextOutput("str"))),
        
        tabPanel("Data", 
                 fluidRow(
                  
                   column(width = 3, tags$b(tableOutput("data"))),
                   
                   column(width = 5, tags$b(tableOutput("actualdataset")))
                 )
                 
                 ),
        tabPanel("Plot", 
                 tags$i(h4(textOutput("x_label"))),
                 tags$i(h4(textOutput("col_name"))),
                 tags$i(h4(textOutput("bin_nums"))),
                 br(),
                 plotOutput("myhist")
                 
                 )
                 
      )
      
      
      
    )
  )
  
))