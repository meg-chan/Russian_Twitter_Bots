library(wordcloud)

pdf("AllUniqueWordclouds.pdf")
png("Commercial_top100wc.png")
wordcloud(words = Commercial_Scores2$X,
          freq = Commercial_Scores2$X0,
          min.freq=3,
          max.words=100, 
          random.order=FALSE,
          rot.per=.3, 
          ordered.colors=FALSE, 
          colors=brewer.pal(8, "Dark2"),
          use.r.layout=FALSE, 
          fixed.asp=TRUE)
dev.off()

png("Fearmonger_top100wc.png")
wordcloud(words = Fearmonger_Scores2$X,
          freq = Fearmonger_Scores2$X0,
          min.freq=3,
          max.words=100, 
          random.order=FALSE,
          rot.per=.3, 
          ordered.colors=FALSE, 
          colors=brewer.pal(8, "Dark2"),
          use.r.layout=FALSE, 
          fixed.asp=TRUE)
dev.off()

png("HashtagGamer_top100wc.png")
wordcloud(words = HashtagGamer_Scores2$X,
          freq = HashtagGamer_Scores2$X0,
          min.freq=3,
          max.words=100, 
          random.order=FALSE,
          rot.per=.3, 
          ordered.colors=FALSE,  
          colors=brewer.pal(8, "Dark2"),
          use.r.layout=FALSE, 
          fixed.asp=TRUE)
dev.off()

png("LeftTroll_top100wc.png")
wordcloud(words = LeftTroll_Scores2$X,
          freq = LeftTroll_Scores2$X0,
          min.freq=3,
          max.words=100, 
          random.order=FALSE, 
          rot.per=.3, 
          ordered.colors=FALSE,  
          colors=brewer.pal(8, "Dark2"),
          use.r.layout=FALSE, 
          fixed.asp=TRUE)
dev.off()

png("NewsFeed_top100wc.png")
wordcloud(words = NewsFeed_Scores2$X,
          freq = NewsFeed_Scores2$X0,
          min.freq=3,
          max.words=100, 
          random.order=FALSE, 
          rot.per=.3, 
          ordered.colors=FALSE,  
          colors=brewer.pal(8, "Dark2"),
          use.r.layout=FALSE, 
          fixed.asp=TRUE)
dev.off()

png("NonEnglish_top100wc.png")
wordcloud(words = NonEnglish_Scores2$X,
          freq = NonEnglish_Scores2$X0,
          min.freq=3,
          max.words=100, 
          random.order=FALSE,
          rot.per=.3, 
          ordered.colors=FALSE,  
          colors=brewer.pal(8, "Dark2"),
          use.r.layout=FALSE, 
          fixed.asp=TRUE)
dev.off()

png("RightTroll_top100wc.png")
wordcloud(words = RightTroll_Scores2$X,
          freq = RightTroll_Scores2$X0,
          min.freq=3,
          max.words=100, 
          random.order=FALSE,
          rot.per=.3, 
          ordered.colors=FALSE, 
          colors=brewer.pal(8, "Dark2"), 
          use.r.layout=FALSE, 
          fixed.asp=TRUE)
dev.off()

png("Unknown_top100wc.png")
wordcloud(words = Unknown_Scores2$X,
          freq = Unknown_Scores2$X0,
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