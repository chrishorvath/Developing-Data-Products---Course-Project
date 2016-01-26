library(shiny)
library(RCurl)
library(caret)
data(mtcars)

modFit <- lm(formula = mpg ~ cyl + hp + wt + am, data = mtcars)
shinyServer(
  function(input, output) { 

  output$Results <- renderPrint({
    cyl = input$cyl
    hp = input$hp
    wt = input$wt
    am = as.numeric(input$am)
    pred = predict(modFit,data.frame(cyl, hp, wt, am))
      pred
    })
  }
)