shinyUI(
      pageWithSidebar(
            # My Simple Shiny App for Data Products Course Project in Coursera
            
            headerPanel("Predicting Flower Species"),
            sidebarPanel( 
                  sliderInput("s.length",
                              "Sepal Length (in cm):",
                              min = 4.0,  max = 8.0, value = 4.0, step = 0.1),
                  sliderInput("s.width",
                              "Sepal Width (in cm)",
                              min = 2.0,  max = 5.0,  value = 2.0, step = 0.1),
                  sliderInput("p.length",
                              "Petal Length (in cm)",
                              min = 1.0,  max = 8.0,  value = 1.0, step = 0.1),
                  sliderInput("p.width",
                              "Petal Width (in cm)",
                              min = 0.1,  max = 3.0,  value = 0.1, step = 0.1),
                  br(),
                  submitButton("Predict")
            ),
            
            mainPanel(
                  h3('Results of prediction'),
                  br(),
                  h4('You entered the following values:'),
                  tableOutput(outputId = "newdata"),
                  br(),
                  h4('The predicted species is:'),
                  textOutput("prediction")
            )
      )
)