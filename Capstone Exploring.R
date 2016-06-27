en_US.blogs <- file("~/GitHub/Capstone/Data/final/en_US/en_US.blogs.txt","r")
en_US.news <- file("~/GitHub/Capstone/Data/final/en_US/en_US.news.txt", "r")
en_US.twitter <- file("~/GitHub/Capstone/Data/final/en_US/en_US.twitter.txt", "r")

en_US.blogs.sub <- readLines(en_US.blogs, en_US.blogs[rbinom(length(en_US.blogs)*0.005, length(en_US.blogs), .5)])
en_US.news.sub <- readLines(en_US.news)[rbinom(length(en_US.news)*0.005, length(en_US.news), .5)]
en_US.twitter.sub <- readLines(en_US.twitter)[rbinom(length(en_US.twitter)*0.005, length(en_US.twitter), .5)]

close(en_US.blogs)
close(en_US.news)
close(en_US.twitter)