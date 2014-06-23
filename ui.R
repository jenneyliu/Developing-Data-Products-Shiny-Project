
library(shiny)
library(devtools)
library(shinyapps)
shinyUI( 
      pageWithSidebar(
            # Application title 
            headerPanel("BodyMassIndex (BMI) Calculator"),
            sidebarPanel(
                  a("Supporting Documentation", href="readme.html"),
                  numericInput('weight', 'your weight in kg', 80), 
                  numericInput('height', 'your height in cm', 180 ), 
                  submitButton('Submit')
            ), 
            mainPanel( 
                  h3('Results of calculation'),
                  h4('You weight:'), 
                  verbatimTextOutput("weight"), 
                  h4('You height:'), 
                  verbatimTextOutput("height"), 
                  h4('Your BodyMassIndex (bml): '), 
                  verbatimTextOutput("prediction1"),
                  h4('Are you in shape?'), 
                  verbatimTextOutput("prediction2")  
            )
   )
)