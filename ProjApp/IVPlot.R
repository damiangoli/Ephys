#    http://shiny.rstudio.com/

library(shiny)

shinyUI(fluidPage(

    # Application title
    titlePanel("IV curve based on Potassium and Sodium conductances"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("Na Conductance",
                        "Sodium Conductance",
                        min = 0,
                        max = 100,
                        value = 50),
            sliderInput("K Conductance",
                        "Potassium Conductance",
                        min = 0,
                        max = 100,
                        value = 50)
              ),



        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("Na Conductance")
        )
    )
))

