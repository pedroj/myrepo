#
# Sourcing a file from GitHub.
require(downloader)
link = "https://raw.githubusercontent.com/pedroj/effectiveness/master/myfunction.R"
file = "myfunction.R"
if(!file.exists(file)) download(link, file, mode = "wb")
source(file)

#
# Get a dataset from a GitHub repository.
require(downloader)
link = "https://raw.githubusercontent.com/pedroj/effectiveness/master/mydata.txt"
file = "mydata.txt"
if(!file.exists(file)) download(link, file, mode = "wb")
mydata <- read.table(file, sep = "\t", dec = ".", 
    header = TRUE, na.strings="NA")

