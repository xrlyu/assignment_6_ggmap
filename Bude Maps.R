suppressMessages(library(ggmap))
suppressMessages(library(tidyverse))

load("Bude_map.RData")

# plot the roadmap with points marking beaches, the cricket ground and Bar 35
road <- ggmap(roadmap) +
  geom_point(
    aes(x = lon, y = lat),
    data = beach, color = "blue", size = 3
  ) +
  geom_point(
    aes(x = lon, y = lat),
    data = gc.cricket, color = "green", size = 3
  ) +
  geom_point(
    aes(x = lon, y = lat),
    data = gc.bar, color = "red", size = 3
  ) +
  geom_path(
    aes(x = lon, y = lat), lineend = "round",
    data = route, color = "yellow", size = 1.5
  ) +
  geom_text(data = beach, aes(label = label.beach), hjust = 1.1) +
  geom_text(data = gc.cricket, aes(label = label.cricket), hjust = 0.7, vjust = 1.5) +
  geom_text(data = gc.bar, aes(label = label.bar), hjust = 1.3) # add labels to geom points


# plot the watercolor map with points marking beaches, the cricket ground and Bar 35
water <- ggmap(watercolor) +
  geom_point(
    aes(x = lon, y = lat),
    data = beach, color = "blue", size = 3
  ) +
  geom_point(
    aes(x = lon, y = lat),
    data = gc.cricket, color = "green", size = 3
  ) +
  geom_point(
    aes(x = lon, y = lat),
    data = gc.bar, color = "red", size = 3
  ) +
  geom_path(
    aes(x = lon, y = lat), lineend = "round",
    data = route, color = "yellow", size = 1.5
  ) +
  geom_text(data = beach, aes(label = label.beach), hjust = 1.1) +
  geom_text(data = gc.cricket, aes(label = label.cricket), hjust = 0.7, vjust = 1.5) +
  geom_text(data = gc.bar, aes(label = label.bar), hjust = 1.3) # add labels to geom points