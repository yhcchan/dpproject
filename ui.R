shinyUI(
      pageWithSidebar(
            # My Simple Shiny App for Data Products Course Project in Coursera
            headerPanel(
                  h1("Predicting Iris Species"),
            ),
            
            sidebarPanel(
                  h5("Welcome! This app tells you what species of iris your flower belongs to based on its sepal 
                        and petal dimensions. Simply drag the sliders to the appropriate numbers (in cm), 
                        press the Predict button, and the app will predict what species of iris you have - 
                        setosa, virginica or versicolor."),
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