
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(pageWithSidebar(
        headerPanel("Analysis of Galton data - project assignment"),
        sidebarPanel(
                radioButtons("iChart", "Chart type:",
                             c("Histogram" = "hist",
                               "LM regression" = "lmregr",
                               "Cook's distance" = "cookd",
                               "Residuals vs Fitted" = "resid"))
        ),
        mainPanel(
                plotOutput('oPlot'),
                "",
                "Please select radiobutton to display various analytic charts for Galton data of dependency between parerts height and children height."
        )
))