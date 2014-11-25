developing-data-products-shiny-app
==================================

This repo contains the supporting documentation and files for a simple shiny app developed for the Cousera Johns Hopkins Developing Data Products course in the Data Science Specialization. The app is based on a data set obtained and described here: https://archive.ics.uci.edu/ml/machine-learning-databases/wine/.  The app itself takes allows the user to input specifics about their wine and obtain an predicted cultivars (1 to 3) based on a GLM prediction algorithm generated from the original data set.  Users can pick their wines attributes.  Once they hit submit, the app returns their wines predicted cultivars.  This repo contains the following additional files:

1. ui.R used to generate the shiny app
2. server.R second file needed to generate the shiny app
3. DevData_Project.md is the Markdown file that generates the R Presenter presentation describing the shiny app
4. DevData_Project.html is a HTML compiled from the .md file, and generates the presentation hosted on RPubs here: http://rpubs.com/rkackerman/shinyappproject.
