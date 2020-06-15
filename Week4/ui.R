library(shiny)
shinyUI(fluidPage(
    
    titlePanel("Miles per Gallon Plotting"),
    
    sidebarPanel(
        selectInput("variable", "Variable:", 
                    c("Cylinders" = "cyl",
                      "Transmission" = "am",
                      "Gears" = "gear")),
        submitButton("Submit")
    ),
    
    mainPanel(
        tabsetPanel(
            tabPanel("Overview", p("This plot is a relationship plot between miles per gallon and the variable that you choose."),
                     p("This is taken from the mtcars dataset"),
                     p("To render the plot, please choose and option from the dropbox and select submit.")),
            tabPanel("Plot", plotOutput("mpgplot"))
        )
    )
))
