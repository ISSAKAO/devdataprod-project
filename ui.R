library(shiny)
library(rattle)
library(caret)
shinyUI (
  pageWithSidebar (
    # Application title
    headerPanel ("Predict Your wine's cultivar"),
    
    sidebarPanel (
      numericInput('Alcohol', 'Alcohol', 13, min = 11, max= 15 , step = 0.1),
      numericInput('Malic', 'Malic acid', 3, min = 0, max= 7, step = 0.1),
      numericInput('Ash', 'Ash', 3, min = 1, max= 5, step = 0.01),
      numericInput('Alcalinity', 'Alcalinity of ash', 20, min = 10, max= 35, step = 0.1),
      numericInput('Magnesium', 'Magnesium', 100, min = 70, max= 170, step = 1),
      numericInput('Phenols', 'Total phenols', 2, min = 0.5, max= 5, step = 0.1),
      numericInput('Flavanoids', 'Flavanoids', 2, min = 0, max= 7, step = 0.1),
      numericInput('Nonflavanoids', 'Nonflavanoid phenols', 190, min = 0, max= 1, step = 0.001),
      numericInput('Proanthocyanins', 'Proanthocyanins', 2, min = 0, max= 4, step = 0.01),
      numericInput('Color', 'Color intensity', 10, min = 0, max= 15, step = 1),
      numericInput('Hue', 'Hue', 1, min = 0, max= 2, step = 0.001),
      numericInput('Dilution', 'OD280/OD315 of diluted wines', 3, min = 0, max= 5, step = 0.01),
      numericInput('Proline', 'Proline', 1000, min = 278.0, max= 1680, step = 50),
      submitButton('Submit')
    ),
    mainPanel (
      h3 ('Results of prediction'),
      h4 ('Your wine\'s Predicted cultivar:'),
      textOutput("prediction")
    )
  )
  
)