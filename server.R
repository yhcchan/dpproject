library(shiny)
library(caret)
library(rpart)
library(e1071)

modelfit <- train(Species~., data = iris, method = "rpart")
t <- data.frame(Sepal.Length = double(0), 
                Sepal.Width = double(0), 
                Petal.Length = double(0), 
                Petal.Width = double(0))

shinyServer(
      function(input, output) {
            output$newdata <- renderTable({
                  t[1,] <- c(input$s.length, input$s.width, input$p.length, input$p.width)
                  t
            })
            output$prediction <- renderText({
                  t[1,] <- c(input$s.length, input$s.width, input$p.length, input$p.width)
                  as.character(predict(modelfit, t)[1])
            })
      }      
)