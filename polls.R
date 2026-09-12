# Define the vectors
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")

ABC_poll <- c(4, 62, 51, 21, 2, 14, 15)

CBS_poll <- c(12, 75, 43, 19, 1, 21, 19)

# Create the data frame
df_polls <- data.frame(Name, ABC_poll, CBS_poll)

# Inspect the data
str(df_polls)
head(df_polls)

# Summary statistics
mean(df_polls$ABC_poll)
median(df_polls$CBS_poll)
range(df_polls[, c("ABC_poll", "CBS_poll")])

# Calculate the difference between CBS and ABC
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_poll

# View the updated data frame
df_polls

# Load ggplot2
library(ggplot2)

# Create bar chart
ggplot(df_polls, aes(x = Name, y = Diff)) +
  geom_col() +
  labs(
    title = "Difference Between CBS and ABC Poll Results",
    x = "Candidate",
    y = "CBS Poll - ABC Poll"
  )

