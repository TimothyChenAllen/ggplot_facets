# 1. Load libraries
require(ggplot2)

# 2. Create a plot with two facets
yr <- c(2013,2014,2015,2013,2014,2015)
widgets.made <- c(10,20,40,15,30,60)
factory <- c(rep(" Factory A",3),rep("Factory B",3))
df <- data.frame(factory, widgets.made, yr)
png("./factories.png")
# Note the geom_bar "fill" parameter-- I want this
# to be different for each facet; 
# Red for Factory A
# Blue for Factory B
ggplot(df) + 
        aes(yr, widgets.made) + 
        geom_bar(stat="identity", fill="green") +
        facet_grid(. ~ factory)
dev.off()