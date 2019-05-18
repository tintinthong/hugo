#....:....1....:....2....:....3....:....4....:....5....:....6....:....7....:....8



function(input, output, session) {
  
  
  #session 
  dataMat<-"here"
  
  #sourced for each session
  #source('all_sessions.R', local = TRUE)
  
  
  output$plotJT <- renderPlot({
    
    # Render a barplot
    hist(data, 
         main="just something",
         ylab="Shipment Value (US$)",
         xlab="Year")
  })
  
  
  output$text1 <- renderText({paste("NextWord")}) #, input$var
  output$text2 <- renderText({paste("Word for scale")}) #, input$var
  
  # Reactive expression to generate the requested distribution ----
  # This is called whenever the inputs change. The output functions
  # defined below then use the value computed from this expression
  d <- reactive({
    dist <- switch(input$dist,
                   norm = rnorm,
                   unif = runif,
                   lnorm = rlnorm,
                   exp = rexp,
                   rnorm)
    
    dist(input$n)
  })
  
  # Generate a plot of the data ----
  # Also uses the inputs to build the plot label. Note that the
  # dependencies on the inputs and the data reactive expression are
  # both tracked, and all expressions are called in the sequence
  # implied by the dependency graph.
  output$plot <- renderPlot({
    dist <- input$dist
    n <- input$n
    
    hist(d(),
         main = paste("r", dist, "(", n, ")", sep = ""),
         col = "#75AADB", border = "white")
  })
  
  # Generate a summary of the data ----
  output$summary <- renderPrint({
    summary(d())
  })
  

# for (Si in 1:Ss) {
#  for (Mi in 1:Ms) {
  
  
  observeEvent(input$sliderInput, {
    sliderInput <- input$sliderInput; 
    #     SM[Si,Mi] <- vSM <- match(str(input$dynamic), btx)
  })
  
  output$dynamic_value <- renderPrint({
    str(input$dynamic)
  })
  output$numeric_value <- renderPrint({
    str(vSM)
    

  
 
    
  output$selected_var<- renderText({
    "You have selected this"
  })
  
  
  
    
  })
  
}