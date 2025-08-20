# Second ugly plot

pacman::p_load("tidyverse", "here", "ggthemes")

space_df <- read_csv(here::here("data", "space_launches.csv"))

# Three dimensional objects are very popular but negatively affect the accuracy and speed at which one can interpret a graphic in most cases. In general, it is better to avoid them. Basically, 3d scatterplots and surface plots are the only tolerated exceptions. Please don't build 3d barplots or even worse, 3d pie charts.

ggplot(data = space_df, aes(x = category, y = launch_year, fill = agency)) +
  geom_tile() +
  facet_wrap(~agency_type) +
  theme_minimal()
# flip y axis?
# blues palette!!
# facet wrap?