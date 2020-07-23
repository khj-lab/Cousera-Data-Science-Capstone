source("predict.R")

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    next_word <- reactive({
        hope <- as.character(next_word_predict(as.character(input$text))[2])
    })
    
    
    # show output prediction
    output$next_word <- renderText({
        next_word()
    })
})