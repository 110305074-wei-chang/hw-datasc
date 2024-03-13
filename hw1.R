summary <- function(input, output) {
  data <- read.csv(input)
  max_身高 <- max(data$height)
  max_體重 <- max(data$weight)
  max <- data[which(data$height == max_身高 & data$weight == max_體重), ]
  
  max_summary <- data.frame(set = basename(input), weight = round(max_體重, 2), height = round(max身高, 2))
  write.csv(max_summary, file = output, row.names = FALSE)
  
  return(max_summary)
  

}

# You could unmark the following cmd for local testing. Please mark it as a comment when uploading to GradeScope.
# summary("./example/input1.csv", "./example/output1_test.csv")
