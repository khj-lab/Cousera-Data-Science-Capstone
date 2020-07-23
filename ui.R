library(shiny)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
    
    headerPanel("Word predictive application"),
    
    sidebarPanel(
        
        textInput("text", 
                  label = h3("Enter text:"), 
                  value = "I live in "),
        h6(em("Note: You type text above textbox, press [OK] button or Enter key.")),
        h6(em("Note: This application ignores numbers and special characters.")),
        
        submitButton("OK")
        
    ),
    
    mainPanel(
        h4("Predicted next word:"),
        verbatimTextOutput("next_word")
    )
    
))