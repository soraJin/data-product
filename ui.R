library(shiny) # load the shiny package

# Define UI for application
shinyUI(fluidPage(
  
  # Header or title Panel 
  titlePanel(h4(' A Histogram with iris dataset', align = "center")),
  h4("This histogram shows some basic information about the Iris dataset.There are 4 variables in the dataset, user can select which variables
     they want to look at, change the number is BINs as they like. The coreesponding result will change in the histogram."),
  
  # Sidebar panel
  sidebarPanel(
    
    
    
    selectInput("var", label = "1. choose the quantitative Variable", 
                choices = c("Sepal.Length" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width"=4),
                selected = 3), 
    
    
    sliderInput("bin", "2. Select the number of histogram BINs by using the slider below", min=5, max=25, value=15),
    
    radioButtons("colour", label = "3. Select the color of histogram",
                 choices = c("Blue", "Purple",
                             "Yellow"), selected = "Blue")
  ),
  
  # Main Panel
  mainPanel(
    textOutput("text1"),
    textOutput("text2"),
    plotOutput("myhist")
    
  )
  
)
)