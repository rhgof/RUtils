suppressMessages(library(tidyverse))


customTheme <- function () {
  theme_minimal() +
  theme(
        legend.position = "right",
        
        text = element_text(color="grey10"),
        
        plot.title = element_text(face = "bold",hjust=0),
        plot.subtitle = element_text(size=9,hjust=0, margin = margin(0,0,10,0)),
        plot.caption.position = "plot",
        plot.caption = element_text(size=7,hjust=1),
        plot.margin = margin(20,20,20,20),
        plot.background = element_rect(colour = "#F6F6F6", fill = "#F6F6F6"),
        
        panel.grid.major = element_line(color="grey60",size = 0.1),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.y = element_line(color = "gray85", size = 0.1),
        #aspect.ratio = 900/1600,
        
        legend.text=element_text(colour="Grey40"),
        legend.title=element_text(colour="Grey20"),
        
        axis.title.x = element_blank(),
  )
}