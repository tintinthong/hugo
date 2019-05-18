#Global Button2  M3DA-RMS Remote Measuring System

#....:....1....:....2....:....3....:....4....:....5....:....6....:....7....:....8

# Designed to be used either stimulus by stimulus for all measures OR
# measure by measure for all stimuli  * to be downloaded from a remote
# database set up by separate shiny front end which also stores inputs.

# Stimuli and measures can be evaluated by finding ones closest to each 
# one, eliminating redundancy as needed to keep the count within bounds
# and then finding a few stimluli at several points in a range from min
# to max. The process provides for systematic review, allowing elements
# to be compared in detail, and then retained, archived and even added.

#global.R: Main App File
#ui.R: User Interface File
#server.R: Logic File

#load libraries
library(shiny)
library(shinyWidgets)
library(shinythemes)

#-- Constant -- 

#S: Stimulus
Sn   <- c("amble",  "crawl",  "creep",  "dart",  "dash",    "halt",    "hike",
          "hobble", "hurry",  "hustle", "jog",   "jostle",  "lag",     "limp",
          "linger", "loiter", "lumber", "march", "pace",    "plod",    "push",
          "race",   "ramble", "run",    "rush",  "saunter", "scamper", "scurry",
          "shove",  "skip",   "sprint", "stalk", "stand",   "step",    "stride",
          "strut",  "tarry",  "tramp",  "tread", "trot",    "trudge",  "walk")
Ss <- length(Sn)        # stimulus count
So <- c(1:Ss)           # stimulus order

#M: Measures
#could be good idea to set three vectors or objects (maybe in S3 class)
Mn   <- c(
          "aggressive",   "agile",        "alert",        "animalistic", 
          "changing",     "competitive",  "debilitated",  "deliberate",
          "fast",         "forceful",     "goal focused", "group",
          "happy",        "intermittent", "long motion",  "long term", 
          "moving",       "stealth",      "strenuous",    "urgent", 
          "vertical", #   "delicate",     "graceful",
          "articulate", "beautiful", "complex", "clear", 
          "distinct", "evocative", "positive", "good"
          
          )        

Mm <- c("measure", "quality", "overall")   # define mesurement sets
Mr <- c(TRUE, TRUE, FALSE)                 # randomize or not 


#-- Variables -- 
Mi<-1
Si<-1
data<-rnorm(100)


#table of words


#-- UI -- 

btx <- c("less","<<","<","< ? >",">",">>","more")  



# needs to selectively randomize for each set
# randomize some groups and some sets of groups to some depth


# fMp <- function (seq) {
#   c(sample(seq(1:5)),  sample(seq(22:23)), seq(29))  # TEST
# }
# 
# #what does fMp stand for? 
# random_fMp_n<-function(Sn, Mn){
#   return(c(sample(Sn,1),sample(Mn,1)))
# }
# 
# random_fMp_s<-function(Ss, Ms){
#   return(c(sample(Ss,1),sample(Ms,1)))
# }
# 
# random_fMp_n(Sn,Mn)
# random_fMp_s(Ss,Ms)

#array(0,c(Ss,Ms), dimnames=list(Sn,Mn))
#expand.grid(Sn,Mn, dimanames=list(Sn,Mn))
#expand.grid(seq(So),seq(So))


