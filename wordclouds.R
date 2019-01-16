#### Russian Twitter Wordclouds
# Megan E Chan

library(wordcloud)

Commercial_Scores2 <- read.csv("../data/Commercial_scores2.csv")
Commercial_unique <- read.csv("../data/Commercial_unique.csv")

Fearmonger_Scores2 <- read.csv("../data/Fearmonger_scores2.csv")
Fearmonger_unique <- read.csv("../data/Fearmonger_unique.csv")

HashtagGamer_Scores2 <- read.csv("../data/HashtagGamer_scores2.csv")
HashtagGamer_unique <- read.csv("../data/HashtagGamer_unique.csv")

LeftTroll_Scores2 <- read.csv("../data/LeftTroll_scores2.csv")
LeftTroll_unique <- read.csv("../data/LeftTroll_unique.csv")

NewsFeed_Scores2 <- read.csv("../data/NewsFeed_scores2.csv")
NewsFeed_unique <- read.csv("../data/NewsFeed_unique.csv")

NonEnglish_Scores2 <- read.csv("../data/NonEnglish_scores2.csv")
NonEnglish_unique <- read.csv("../data/NonEnglish_unique.csv")

RightTroll_Scores2 <- read.csv("../data/RightTroll_scores2.csv")
RightTroll_unique <- read.csv("../data/RightTroll_unique.csv")

Unknown_Scores2 <- read.csv("../data/Unknown_scores2.csv")
Unknown_unique <- read.csv("../data/Unknown_unique.csv")

Commercial_unique$X <- NULL
Fearmonger_unique$X <- NULL
HashtagGamer_unique$X <- NULL
LeftTroll_unique$X <- NULL
NewsFeed_unique$X <- NULL
NonEnglish_unique$X <- NULL
RightTroll_unique$X <- NULL
Unknown_unique$X <- NULL

colnames(Commercial_unique) <- c("word")
colnames(Fearmonger_unique) <- c("word")
colnames(HashtagGamer_unique) <- c("word")
colnames(LeftTroll_unique) <- c("word")
colnames(NewsFeed_unique) <- c("word")
colnames(NonEnglish_unique) <- c("word")
colnames(RightTroll_unique) <- c("word")
colnames(Unknown_unique) <- c("word")

colnames(Commercial_Scores2) <- c("word", "score")
colnames(Fearmonger_Scores2) <- c("word", "score")
colnames(HashtagGamer_Scores2) <- c("word", "score")
colnames(LeftTroll_Scores2) <- c("word", "score")
colnames(NewsFeed_Scores2) <- c("word", "score")
colnames(NonEnglish_Scores2) <- c("word", "score")
colnames(RightTroll_Scores2) <- c("word", "score")
colnames(Unknown_Scores2) <- c("word", "score")

Commercial <- merge(Commercial_Scores2, Commercial_unique, by = "word")
Fearmonger <- merge(Fearmonger_Scores2, Fearmonger_unique, by = "word")
HashtagGamer <- merge(HashtagGamer_Scores2, HashtagGamer_unique, by = "word")
LeftTroll <- merge(LeftTroll_Scores2, LeftTroll_unique, by = "word")
NewsFeed <- merge(NewsFeed_Scores2, NewsFeed_unique, by = "word")
NonEnglish <- merge(NonEnglish_Scores2, NonEnglish_unique, by = "word")
RightTroll <- merge(RightTroll_Scores2, RightTroll_unique, by = "word")
Unknown <- merge(Unknown_Scores2, Unknown_unique, by = "word")

pdf("../figures/AllUniqueWordclouds.pdf")
png("../figures/Commercial_wc.png")
wordcloud(words = Commercial$word,
          freq = Commercial$score,
          min.freq=3,
          max.words=100, 
          random.order=FALSE,
          rot.per=.3, 
          ordered.colors=FALSE, 
          colors=brewer.pal(8, "Dark2"),
          use.r.layout=FALSE, 
          fixed.asp=TRUE)
dev.off()

png("../figures/Fearmonger_wc.png")
wordcloud(words = Fearmonger$word,
          freq = Fearmonger$score,
          min.freq=3,
          max.words=100, 
          random.order=FALSE,
          rot.per=.3, 
          ordered.colors=FALSE, 
          colors=brewer.pal(8, "Dark2"),
          use.r.layout=FALSE, 
          fixed.asp=TRUE)
dev.off()

png("../figures/HashtagGamer_wc.png")
wordcloud(words = HashtagGamer$word,
          freq = HashtagGamer$score,
          min.freq=3,
          max.words=100, 
          random.order=FALSE,
          rot.per=.3, 
          ordered.colors=FALSE,  
          colors=brewer.pal(8, "Dark2"),
          use.r.layout=FALSE, 
          fixed.asp=TRUE)
dev.off()

png("../figures/LeftTroll_wc.png")
wordcloud(words = LeftTroll$word,
          freq = LeftTroll$score,
          min.freq=3,
          max.words=100, 
          random.order=FALSE, 
          rot.per=.3, 
          ordered.colors=FALSE,  
          colors=brewer.pal(8, "Dark2"),
          use.r.layout=FALSE, 
          fixed.asp=TRUE)
dev.off()

png("../figures/NewsFeed_wc.png")
wordcloud(words = NewsFeed$word,
          freq = NewsFeed$score,
          min.freq=3,
          max.words=100, 
          random.order=FALSE, 
          rot.per=.3, 
          ordered.colors=FALSE,  
          colors=brewer.pal(8, "Dark2"),
          use.r.layout=FALSE, 
          fixed.asp=TRUE)
dev.off()

png("../figures/NonEnglish_wc.png")
wordcloud(words = NonEnglish$word,
          freq = NonEnglish$score,
          min.freq=3,
          max.words=100, 
          random.order=FALSE,
          rot.per=.3, 
          ordered.colors=FALSE,  
          colors=brewer.pal(8, "Dark2"),
          use.r.layout=FALSE, 
          fixed.asp=TRUE)
dev.off()

png("../figures/RightTroll_wc.png")
wordcloud(words = RightTroll$word,
          freq = RightTroll$score,
          min.freq=3,
          max.words=100, 
          random.order=FALSE,
          rot.per=.3, 
          ordered.colors=FALSE, 
          colors=brewer.pal(8, "Dark2"), 
          use.r.layout=FALSE, 
          fixed.asp=TRUE)
dev.off()

png("../figures/Unknown_wc.png")
wordcloud(words = Unknown$word,
          freq = Unknown$score,
          min.freq=3,
          max.words=100, 
          random.order=FALSE,
          rot.per=.3, 
          ordered.colors=FALSE,  
          colors=brewer.pal(8, "Dark2"),
          use.r.layout=FALSE, 
          fixed.asp=TRUE)
dev.off()
dev.off()