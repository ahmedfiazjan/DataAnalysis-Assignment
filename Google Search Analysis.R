library(gtrendsR)
library(tidyverse)

trend1 <- input_read <- readline() #Take user input for trends
trend2 <- input_read <- readline() #Take user input for trends


Rres <- gtrends(c(trend1, trend2))

InterestOverTime <- res$interest_over_time

InterestOverTime2021 <- iot %>% 
  filter(date > as.Date("2021-01-01"))

InterestOverTime2021 %>% 
  ggplot() + geom_line(aes(x = date,
                           y = hits,
                           color = keyword)) +
  theme_minimal() +
  labs(title = "Google Trend Comparison in 2021",
       subtitle = "Google Search Analysis")

