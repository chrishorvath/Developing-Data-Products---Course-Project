library(shiny)
library(caret)
shinyUI (
  navbarPage("Vehicle MPG Predictor",
    tabPanel("Estimator",
        sidebarPanel (
          numericInput('cyl', 'Cylinders', 4, min = 3, max= 8, step = 1),
          numericInput('hp', 'Horsepower', 100, min = 50, max= 230, step = 5),
          numericInput('wt', 'Weight (1000 lbs)', 3, min = 1.2, max= 6, step = 0.1),
          radioButtons("am", label = h3("Transmission Type:"),
                       choices = list("Manual" = 1, "Automatic" = 0),selected = 0)
        ),
        mainPanel (
          h3 ('Results of prediction'),
          h4 ('Your Vehicle\'s Predicted MPG:'),
          textOutput("prediction"),
          textOutput("Results")
        )),
    tabPanel("Documentation",
             mainPanel(
               includeMarkdown("include.md")
             )
    )         
  )
)