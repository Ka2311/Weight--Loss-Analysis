# Load the required packages
library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)
library(stats)

# Import the data
data <- read_csv("~Desktop\weight-height.csv")

# Check the structure of the data
str(data)

# Conduct a summary analysis
summary(data)

# Conduct an ANOVA test
fit <- aov(Time ~ Representative, data = data)
summary(fit)

# Conduct a post hoc analysis (Tukey's HSD test)
TukeyHSD(fit)

# Visualize the data
ggplot(data, aes(x = Representative, y = Time)) +
  geom_boxplot() +
  labs(title = "Average Response Time by Workout Program",
       x = "Workout Program",
       y = "Response Time (minutes)")