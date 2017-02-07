install.packages("ggplot2")
library("ggplot2")
library("dplyr")

?diamonds
colnames(diamonds)
nrow(diamonds)

diamonds.sample <- sample_n(diamonds, 1000)

ggplot(data = diamonds.sample)


ggplot(data = diamonds.sample) +
  geom_point(mapping = aes(x = carat, y = price))

ggplot(data = diamonds.sample) +
  geom_point(mapping = aes(x = carat, y = price, color=clarity))


# but with all of the dots colored "blue".
# Hint: you'll need to set the color channel, not map a value to it!


ggplot(data = diamonds) +
  geom_point(mapping = aes(x = carat, y = price), color="blue")

ggplot(data = diamonds.sample) +
  geom_point(mapping = aes(x = carat, y = price, shape=cut))

# Draw a scatter plot for `diamonds.sample` of *`cut`* by `carat`, where each
# point has an aesthetic _size_ based on the diamond's *`price`*
ggplot(data = diamonds.sample) +
  geom_point(mapping = aes(x = carat, y = cut, size=price))

# Try coloring the above plot based on the diamond's price!
ggplot(data = diamonds.sample) +
  geom_point(mapping = aes(x = carat, y = cut, size=price, color=price))

# Draw a line plot (with line geometry) for `diamonds.sample`. The x-position should be mapped to
# carat, y-position to price, and color to carat.
ggplot(data = diamonds.sample) +
  geom_line(mapping = aes(x = carat, y = price, color=cut))

# That's kind of messy. Try using `smooth` geometry instead.
ggplot(data = diamonds.sample) +
  geom_smooth(mapping = aes(x = carat, y = price, color=cut))

# Draw a plot with bar geometry (a bar chart), mapping the diamond's `cut` to the x-axis
ggplot(data = diamonds) +  # full data set example
  geom_bar(mapping = aes(x = cut))

# Add an aesthetic property that will _fill_ each bar geometry based on the `clarity` of the diamonds
# What kind of chart do you get?
ggplot(data = diamonds.sample) +
  geom_bar(mapping = aes(x = cut, fill=clarity))