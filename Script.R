# Load tidyverse package 
ibrary(tidyverse)

#Download files from website 
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
  
# Get the mean gdp per continent for the year 1972
avg_gdp <- gapminder %>%
  filter(year == 1972) %>%
  group_by(continent) %>%
  summarize (
    mean_gdp = mean(gdpPercap)
  )
avg_gdp
  
  
