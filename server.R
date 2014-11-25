library(shiny)
library(caret)
library(rattle)
data(wine, package="rattle")
modFit <- train(Type ~ Alcohol + Malic + Ash + Alcalinity + Magnesium + Phenols + Flavanoids + Nonflavanoids + Proanthocyanins + Color + Hue + Dilution + Proline, method="glm", data=wine)
shinyServer(
  function(input, output) { 
       output$prediction <- renderPrint ({
      Alcohol = input$Alcohol 
      Malic = input$Malic
      Ash = input$Ash
      Alcalinity = input$Alcalinity 
      Magnesium = input$Magnesium 
      Phenols = input$Phenols 
      Flavanoids = input$Flavanoids
      Nonflavanoids = input$Nonflavanoids
      Proanthocyanins = input$Proanthocyanins
      Color = input$Color
      Hue = input$Hue
      Dilution = input$Dilution
      Proline = input$Proline
      predict(modFit,data.frame(Alcohol, Malic, Ash, Alcalinity, Magnesium, Phenols, Flavanoids, Nonflavanoids, Proanthocyanins, Color, Hue, Dilution, Proline))})
  }
)
