#read file 
data <- read.csv(file="FMScore.csv", head=TRUE, sep=",")

# get values from "data"
score <- data$Score
disc <- data$Discrepancy

# declare a new plot and plot the barplot
plot.new()
x <- barplot(score, main="FM Score [0-66]", ylab="Score", ylim=range(0:66), col=c("black", "white", "grey"))

# plotting error bars
xHigh <- x
xLow <- x
yHigh <- score + disc
yLow <- score
arrows(xHigh, yHigh, xLow, yLow, col=2, angle=90, length=0.4, code=3)

# insert legend
legend("topright", legend=data$Week, fill=c("black","white","grey"), xjust=1, yjust=1)
