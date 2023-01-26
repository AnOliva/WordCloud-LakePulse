# Aim: Wordcloud analysis on Lake Pulse published papers
# author: anais.oliva@hotmail.fr
# Method from : https://r-graph-gallery.com/102-text-mining-and-wordcloud.html

# set working directory
setwd("E:\\LakePulse\\Rapport_final_LakePulse\\wordcloud")

#Charge the wordcloud library
library(wordcloud)

#data
tdm_df <- read.csv("E:/LakePulse/Rapport_final_LakePulse/wordcloud/results/tdm_df.csv", sep = ";")
ngram <- read.csv("E:/LakePulse/Rapport_final_LakePulse/wordcloud/results/2ngram_df_changed.csv", sep = ",")


#The package will automatically make the wordcloud ! (I add a black background)
png("results/wordcloud_LP.png", width=5,height=5, units='in', res=300)
set.seed(123)
wordcloud(words = tdm_df$word, freq = tdm_df$freq, min.freq = 5,
           random.order=FALSE, rot.per=0.35,max.words=200,
          colors=brewer.pal(8, "Dark2"), ordered.colors = F)
dev.off()






#The package will automatically make the wordcloud ! (I add a black background)
png("results/wordcloud_LP_2ngram.png", width=5,height=5, units='in', res=300)
set.seed(123)
wordcloud(words = ngram$word, freq = ngram$freq, min.freq = 4,
          random.order=F, rot.per=0.35,#max.words=200,
          colors=brewer.pal(8, "Dark2"), ordered.colors = F)
dev.off()








