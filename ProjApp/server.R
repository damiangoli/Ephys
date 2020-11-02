library(shiny)
library(plotly)
library(readxl)

shinyServer(function(input, output) {
    output$textNa = renderText(input$SlideNa)
    output$textK = renderText(input$SlideK)

    output$IVPlot <- renderPlotly({
    cNa <- input$SlideNa
    cK <- input$SlideK
#   cCl <- input$cCl
    IV <- read_excel("IVPlot.xlsx")
    IVPlot <- IV
    IVPlot$Current <- IV$Current - 500 * (cNa/100) + 800 * (cK/100)
    fit <-lm(Current~mV,data=IVPlot)
plot_ly(IVPlot,x=~mV,y=~Current,type="scatter",mode="markers") %>% add_lines(x=~mV,y=fitted(fit)) %>% layout(title="IV Plot based on Na-K conductance")
    })
})
