# TEST CONTENTS

#Stimuli
Sn <- c("amble", "crawl", "creep",  "dart",  "dash") 
Ss <- length(Sn)
So <- c(1:Ss) 
Sp <- So #?
Si <- 1 

#Measures
Mn <- c("agile", "alert", "happy")
Ms <- length(Mn)
Mo <- c(1:Ms)
Mp <- Mo #?
Mi <- 1

#Data
SM<- array(0,c(Ss,Ms),dimnames=list(Sn,Mn))

SMv = 0 #?
xv <- 9 #?


#button
btx <- c("less"=1,"<<"=2,"<"=3,"< ? >"=4,">"=5,">>"=6,"more"=7)