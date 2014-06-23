bmlCaculate <- function(weight, height) {
      height_m <- height/100.0
      weight / (height_m^2)
}
inShape <- function(weight, height) {
      bml <- bmlCaculate(weight, height)
      result <- "Ideal"
      if (bml < 18.5)
      {
            result <- "Underweight"
      } else if (bml < 25)
      {
            result <- "Ideal"
      } else if (bml < 30)
      {
            result <- "Overweight"
      } else 
      {
            result <- "Obese"
      } 

      result
}

shinyServer( 
      function(input, output) {
            output$weight <- renderPrint({input$weight})
            output$height <- renderPrint({input$height})
            output$prediction1 <- renderPrint({bmlCaculate(input$weight, input$height)}) 
            output$prediction2 <- renderPrint({inShape(input$weight, input$height)})
      }
)

