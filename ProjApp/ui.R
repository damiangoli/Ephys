library(shiny)
library(plotly)
shinyUI(fluidPage(

    titlePanel("IV curve based on Potassium and Sodium conductances"),

    # Sidebar with a slider input
    sidebarLayout(
        sidebarPanel(

            sliderInput("SlideNa",
                        "Sodium Conductance",
                        min = 0,
                        max = 100,
                        value = 50),
            sliderInput("SlideK",
                        "Potassium Conductance",
                        min = 0,
                        max = 100,
                        value = 50),
        #For future use
        #    numericInput("cCl", "Select Chloride Conductance (%)",
        #                 value = 0, min = 0, max = 100, step = 10)
              ),

# Show a plot
        mainPanel(
            h5("Na Cond. value:"),
            textOutput("textNa"),
            h5("K Cond. value:"),
            textOutput("textK"),
plotlyOutput("IVPlot")
        )
)
    ))
