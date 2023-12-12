```{r setup}
#| include: false
library(tidyverse)
library(skimr)  
library(ggthemes)  # additional ggplot themes
library(hrbrthemes)  # additional ggplot themes and more
```
install.packages("ggthemes")
# quarto render to render quarto files
# We can hide a specific code chunk by specifying #| echo: false in that specific code chunk:

```{r}
#| echo: false
library(gapminder) # to load gapminder data.frame
ggplot(gapminder) +
  geom_point(aes(x = gdpPercap, y = lifeExp,
                 color = continent), alpha = .25) +
  labs(x = "GDP per capita",
       y = "Life Expectancy",
       color = "Continent") +
  theme_minimal()
```

# We can avoid executing a specific code chunk by specifying #| eval: false in that specific code chunk:
```{r}
#| eval: false
ggplot(gapminder) +
  geom_point(aes(x = gdpPercap, y = lifeExp,
                 color = continent), alpha = .25) +
  labs(x = "GDP per capita",
       y = "Life Expectancy",
       color = "Continent") +
  theme_economist()
```

# The Render button (command/Ctrl + shift + K) renders a single Quarto file.

