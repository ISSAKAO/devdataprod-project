# Define UI Heart Disease application
library(shiny)
shinyUI(pageWithSidebar(
  # Application title
  headerPanel("Heart Disease"),
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(
    selectInput("variable", "Variable:",
               list("Sex" = "sex", 
                    "chest pain type" = "chest_pain", 
                    "fasting blood sugar > 120 mg/dl" = "fbs", 
                    "exercise induced angina" = "exang", 
                    "disease status" = "disease")),
    p("This app explores the data extracted from Heart Disease Data Set; it allow to represent resting blood pressure versus other variables"),
    p("This dataset present the characteristics of patients and theirs angiographic disease status ", style = "font-family: 'times'; font-si16pt"),
    strong("Start by selecting from drop-down below:"),
    checkboxInput("outliers", "Show outliers", FALSE)
   
  ),
  # Show the caption and plot of the requested variable against mpg
  mainPanel(
    h3(textOutput("caption")),
    img(src = "myimage.png", height = 100, width = 100),
    plotOutput("HeartPlot")
  )
))