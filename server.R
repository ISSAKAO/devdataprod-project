# We tweak the "am" field to have nicer factor labels. Since this doesn't
# rely on any user inputs we can do this once at startup and then use the
# value throughout the lifetime of the application

HeartData <- read.table("http://eric.univ-lyon2.fr/~ricco/tanagra/fichiers/heart_for_rattle.txt",
                        header=TRUE, sep="", na.strings="NA", dec=".", strip.white=TRUE)

HeartData$sex <- factor(HeartData$sex, labels = c("Male", "Female"))

# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
  
  # Compute the forumla text in a reactive expression since it is 
  # shared by the output$caption and output$mpgPlot expressions
  formulaText <- reactive({
    paste("trestbps ~", input$variable)
  })
  
  # Return the formula text for printing as a caption
  output$caption <- renderText({
    formulaText()
  })
  
  # Generate a plot of the requested variable against mpg and only 
  # include outliers if requested
  output$HeartPlot <- renderPlot({
    boxplot(as.formula(formulaText()), 
            data = HeartData,
            outline = input$outliers)
  })
})