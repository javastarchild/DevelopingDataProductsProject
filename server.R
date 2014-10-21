library(shiny)

data(mtcars)
## fit <- lm(mpg ~ I(wt - mean(wt)), data = mtcars)
fit <- lm(mpg ~ wt, data = mtcars)

shinyServer(
  function(input, output) {
    x <- reactive(predict(fit, newdata = data.frame(wt = (as.numeric(input$weight)/1000)), interval = c("prediction") ))
    output$weight <- renderText({input$weight})
    output$prediction <- renderText({
      if(input$goButton >= 1) { isolate(x()) }
    })
  }
)