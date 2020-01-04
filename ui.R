#this file is for the front-end that will be displayed to the user on the screen.
#this includes HTML input fields and slider inputs for taking the input from the users for predicting the quality of wine.
library(shiny)
shinyUI(navbarPage("Wine Quality Estimator",

                   tabPanel("Estimator",
                            
                            fluidPage(
                              fluidRow(
                                column(4, align="center",
                                       wellPanel(
                                         h3('Select properties of your wine'),
                                         sliderInput('crit1', HTML("Fixed Acidity - g/dm<sup>3<sup>"), 8.3, min=4.6, max=15.9, step=0.1),
                                         sliderInput('crit2', HTML("Volatile  Acidity - g/dm<sup>3</sup>"), 0.55, min=0.15, max=1.55, step=0.05),
                                         sliderInput('crit3', HTML("Citric Acid - g/dm<sup>3</sup>"), 0.30, min=0, max=1, step=0.05),
                                         sliderInput('crit4', 'pH', 3.35, min=2.75, max=4, step=0.05),
                                         sliderInput('crit5', HTML("Sulphates - g/dm<sup>3</sup>"), 0.65, min=0.35, max=2, step=0.05),
                                          sliderInput('crit6', HTML("Residual Sugar - g/dm<sup>3</sup>"), 2.5, min=1, max=15, step=0.5),
                                         sliderInput('crit7', HTML("Sodium Chloride - g/dm<sup>3</sup>"), 0.1, min=0.01, max=0.6, step=0.01),
                                         sliderInput('crit8', HTML("Free Sulfur Dioxide SO2  - mg/dm<sup>3</sup>"), 16, min=1, max=72, step=1),
                                         sliderInput('crit9', HTML("Total Sufur Dioxide SO2 - mg/dm<sup>3</sup>"), 50, min=5, max=290, step=5),
                                         sliderInput('crit10', HTML("Density - g/cm<sup>3</sup>"), 0.9965, min=0.9905, max=1.0040, step=0.0005),
                                         sliderInput('crit11', 'Alcohol - % by volume', 10.5, min=8.5, max=15, step=0.1),
                                         actionButton("estimate","Estimate")
                                         
                                       )
                                ),
                                column(8, align="center",
                                       h2('Visualize your selection '),
                                       plotOutput('colLegend', height="100%"),
                                       fluidRow(
                                         column(6, align="center",
                                                plotOutput('plot1')
                                         ),
                                         column(6,align="center",
                                                plotOutput('plot2')
                                         )
                                       ),	
                                       fluidRow(
                                         column(6, align="center",
                                                plotOutput('plot3')
                                         ),
                                         column(6,align="center",
                                                plotOutput('plot4')
                                         )
                                       ),	
                                       fluidRow(
                                         column(6, align="center",
                                                plotOutput('plot5')
                                         ),
                                         column(6,align="center", 
                                                plotOutput('plot6')
                                         ),
                                         h2('Estimation of the quality of your selection'),
                                         plotOutput('estquality')
                                         
                                       )
                                )
                              )
                            ))
)
)
