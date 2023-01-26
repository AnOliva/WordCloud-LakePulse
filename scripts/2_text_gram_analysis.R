# Aim: Text cleaning of group of words before Wordcloud analysis
# author: anais.oliva@hotmail.fr
# Method from : https://books.psychstat.org/textmining/word-frequency.html


# set working directory
setwd("E:\\LakePulse\\Rapport_final_LakePulse\\wordcloud")

#Charge the wordcloud library
library(stringr)
library(tm)
library(tibble)
library(tidytext)
library(dplyr)
library(tidyr)

# load data
tdm_df <- read.csv("E:/LakePulse/Rapport_final_LakePulse/wordcloud/results/tdm_df.csv", sep=";")
textword <- read.delim("E:/LakePulse/Rapport_final_LakePulse/wordcloud/data/LP_papers_short.txt", header=FALSE)
# transform to character vector
#textword_unlist <- paste(unlist(textword), collapse =" ")


# 2-gram analysis (analysis with expression of two words)
ngram_analysis <- unnest_tokens(textword, word, V1, token = "ngrams", n = 2)

# separate each word in different column
ngram_separated <- ngram_analysis %>% separate(word, c("word1", "word2"), sep = " ")
# remove stopwords in each column
ngram_separated$word1 = ifelse(ngram_separated$word1 %in% stopwords("SMART"), NA, ngram_separated$word1)
ngram_separated$word2 = ifelse(ngram_separated$word2 %in% stopwords("SMART"), NA, ngram_separated$word2)
# remove rows with NA
ngram_separated = na.omit(ngram_separated)
# calculate frequency of the expression
ngram_df <- ngram_separated %>% unite(word, word1, word2, sep = " ", na.rm = T) %>% count(word, 
                                                                                sort = TRUE)
# add column name
colnames(ngram_df) = colnames(tdm_df)



# Add the individual words to the 2-gram list

# create a vector in which we will store the most occurent words
wordlist = vector()

for (i in 1:nrow(tdm_df)) {
  
  # search for all the expression containing each word in individual list of words
  word.vec = rbind(ngram_df[ngram_df$word %in% grep(tdm_df$word[i], ngram_df$word, value = T),], tdm_df[tdm_df$word %in% tdm_df$word[i],])
  
  # 1 - keep the word with the highest frequency or
  #wordlist[i] = word.vec[which.max(word.vec$freq),]
  # 2 - keep the word above a specific frequency
  wordlist[i] = word.vec[word.vec$freq >4,]
  
}

# unlist 
wordlist = unlist(wordlist)

# combined indivudal and2-gram datasets
df.rbind = rbind(ngram_df, tdm_df)
# keep the words found in wordlist
df.rbind.sel = df.rbind[df.rbind$word %in% wordlist,]


# export
write.table(df.rbind.sel, "results/2ngram_df.csv", sep = ";", row.names = F)








