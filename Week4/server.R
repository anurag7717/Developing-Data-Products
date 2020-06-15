library(shiny)
library(ggplot2)

mpgData <- mtcars
mpgData$am <- factor(mpgData$am, labels = c("Automatic", "Manual"))

shinyServer(function(input, output) {
    
    output$mpgplot <- renderPlot({
        ggplot(mpgData, aes_string(y=input$variable, x="mpg")) + geom_point()
    })
    
})
