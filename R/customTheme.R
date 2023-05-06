#' custom theme entries that get reused across charts
#' @export
customTheme <- function () {
  ggplot2::theme_minimal() +
  ggplot2::theme(
        legend.position = "right",

        text = ggplot2::element_text(color="grey10"),

        plot.title = ggplot2::element_text(face = "bold",hjust=0),
        plot.subtitle = ggplot2::element_text(size=9,hjust=0, margin = ggplot2::margin(0,0,10,0)),
        plot.caption.position = "plot",
        plot.caption = ggplot2::element_text(size=7,hjust=1),
        plot.margin = ggplot2::margin(20,20,20,20),
        plot.background = ggplot2::element_rect(colour = "#F6F6F6", fill = "#F6F6F6"),

        panel.grid.major = ggplot2::element_line(color="grey60", linewidth  = 0.1),
        panel.grid.minor.x = ggplot2::element_blank(),
        panel.grid.major.y = ggplot2::element_line(color = "gray85", linewidth = 0.1),
        #aspect.ratio = 900/1600,

        legend.text=ggplot2::element_text(colour="Grey40"),
        legend.title=ggplot2::element_text(colour="Grey20"),

        axis.title.x = ggplot2::element_blank(),
  )
}
