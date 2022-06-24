# function to geneate a platetools plot with concentration of libraries

library(ggplot2)
library(platetools)
library(viridis)

quant_data = read.csv()

platetools_quant_plot <- function(df){
  
  a <- raw_map(data = df$concentration_nm,
               well = df$well,
               plate = 96) +
    ggtitle("scwgbs concentration") +
    theme_bw() +
    theme(legend.position = "none") +
    scale_fill_viridis()
  
  a
}

platetools_quant_plot(quant_data)