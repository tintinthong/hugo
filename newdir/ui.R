fluidPage(theme = shinytheme("cerulean"),
  #....:....1....:....2....:....3....:....4....:....5....:....6....:....7....:....8
  
  fluidRow(
    column(12, align="center",
      titlePanel(Mn[Mi])
    )
  ),
 
  fluidRow(
    
    column(4,
           textOutput("text1"),
           
           uiOutput("text2")),
    
    column(4,align="center",
           
           sliderTextInput("sliderInput",
                           cat(Mn[Mi],": ",Sn[Si]),  # cat may have
                           selected = btx[4],        # gotten text, use <-
                           choices = btx, 
                           grid =  FALSE, 
                           hide_min_max = FALSE)
           
          
    ),
    
    column(4,
        actionButton("button", "Submit")
    )
    
    ),
    

  
  fluidRow(aligh= "center",
           #tableOutput('table')
           plotOutput("plotJT")
           #make grid
  ),
  
  
  fluidRow(
    
    
      column(4,
             radioButtons("dist", "Distribution type:",
                          c("Normal" = "norm",
                            "Uniform" = "unif",
                            "Log-normal" = "lnorm",
                            "Exponential" = "exp"))
      ),
      
      column(4,
             selectInput("var2", 
                         label = "Choose a variable to display",
                         choices = c("Percent White", 
                                     "Percent Black",
                                     "Percent Hispanic", 
                                     "Percent Asian"),
                         selected = "Percent White")
             
      ),
      
      column(4,
             selectInput("var3", 
                         label = "Choose a variable to display",
                         choices = c("Percent White", 
                                     "Percent Black",
                                     "Percent Hispanic", 
                                     "Percent Asian"),
                         selected = "Percent White")
             )
    )
  
  
  
    
   

 
)