library("shiny")
runExample("01_hello")


runApp("newdir")


fluidRow(
  
  
  column(4,
         
         tags$p("Dynamic input value:"),
         verbatimTextOutput("dynamic_value"),
         tags$p("Numeric input value:"),
         verbatimTextOutput("numeric_value")
  ),
  
  column(4,
         
         tags$p("Dynamic input value:"),
         verbatimTextOutput("dynamic_value"),
         tags$p("Numeric input value:"),
         verbatimTextOutput("numeric_value")
  )
),


btx <- c("less","<<","<","< ? >",">",">>","more")  # text for slider & table
Sn <- c("amble","crawl","creep","dart","dash") # Stimuli names of 10s to 50+
Ss <- 5                                        #   count
So <- c(1:Ss)                         # later  #   order                                 
Sp <- So        # later randomized for person  #   presented order 
Si <- 1                                        #     index
Mn <- c("agile", "alert", "happy")             # Measure names of like count
Ms <- 3                                        #   count
Mo <- c(1:Ms) # later randomized for stimulus  #   order randomized for person
Mp <- Mo                                       #     index
Mi <- 1                                         
SM <- array(0,c(Ss,Ms), dimnames=list(Sn,Mn))
vSM <- 4