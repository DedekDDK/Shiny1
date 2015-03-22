
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(UsingR)
data(galton)
fit <- lm(child ~ parent,galton)

shinyServer(
        function(input, output) {
                inp <- reactive({ return(input$iChart) })

                output$oPlot <- renderPlot({
                        if(inp() == 'hist') {
                                hist(galton$child, xlab='child height', col='lightblue',main='Histogram of children heights')
                        } else if(inp() == 'lmregr') {
                                plot(galton$parent,galton$child, xlab='parent height', ylab='child height', col='blue',main='Children hight based on parents hight')
                                abline(fit)
                        } else if(inp() == 'cookd') {
                                plot(fit,which=4)
                        } else if(inp() == 'resid') {
                                plot(fit,which=1)
                        }
                })
        }
)