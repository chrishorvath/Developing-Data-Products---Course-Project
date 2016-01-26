library(shiny)
library(caret)
data(mtcars)

modFit <- lm(formula = mpg ~ cyl + hp + wt + am, data = mtcars)
shinyServer(
  function(input, output) { 
  output$Data <- renderPlot({
    par(mfrow = c(2,2))
        plot(modFit)
    })
      
  output$Results <- renderPrint({
    cyl = input$cyl
    hp = input$hp
    wt = input$wt
    am = as.numeric(input$am)
    predict(modFit,data.frame(cyl, hp, wt, am))
    })
  }
)