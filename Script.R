library(tidyverse)

download.file("http://fmichonneau.github.io/2017-11-03-gwu/gapminder.csv",
              "data/gapminder.csv")
gapminder <- read_csv("data/gapminder.csv")

#Calculate the average life expectancy by continent 
# (save in a variable called life_exp_continent)

life_exp_continent <- gapminder %>% 
  group_by(continent) %>%
  summarize (
  avg_lifeExp = mean(lifeExp)
  )
life_exp_continent  


# Calculate the life expectancy by year in Canada
life_exp_canada <- gapminder %>%
  filter(country == "Canada") %>%
  select(country, year, lifeExp)

life_exp_canada
  
  