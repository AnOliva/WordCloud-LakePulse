# Aim: Text cleaning of indiviual words before Wordcloud analysis
# author: anais.oliva@hotmail.fr
# Method from : https://r-graph-gallery.com/15-wordcloud

# set working directory
setwd("E:\\LakePulse\\Rapport_final_LakePulse\\wordcloud")

#Charge the wordcloud library
library(tm)

#Create a list of words (Random words concerning my work)
a <- read.delim("E:/LakePulse/Rapport_final_LakePulse/wordcloud/data/LP_papers_short.txt", header=FALSE)
# transform to character vector
a <- paste(unlist(a), collapse =" ")

# our custom vector of stop words
my_custom_stopwords <- c("one", "two", "three"
)

# transform to corpus
vdocs <- VCorpus(VectorSource(a))

# remove numbers
vdocs <- tm_map(vdocs, removeNumbers, ucp = T)
# remove punctuation except for -
vdocs <- tm_map(vdocs, removePunctuation, preserve_intra_word_contractions = F, preserve_intra_word_dashes = T)
# to lowercase
vdocs <- tm_map(vdocs, content_transformer(tolower)) 
# remove common stopwords
vdocs <- tm_map(vdocs, removeWords, stopwords("SMART")) 
# remove custom stopwords
vdocs <- tm_map(vdocs, removeWords, my_custom_stopwords) 

# 1 STEMMING
# group similar word with same stem
#vdocs <- tm_map(vdocs, stemDocument, language = "english")
# this is one way to remove custom stopwords
#tdm <- TermDocumentMatrix(vdocs)
#tdm.matrix <- as.matrix(tdm)
#tdm.rs <- sort(rowSums(tdm.matrix), decreasing=TRUE)
#tdm.df <- data.frame(word = names(tdm.rs), freq = tdm.rs, stringsAsFactors = FALSE)


# 2 transform plural to singular
# function to transform plural to singular
aggregate.plurals <- function (v) {
aggr_fn <- function(v, singular, plural) {
  if (! is.na(v[plural])) {
    v[singular] <- v[singular] + v[plural]
    v <- v[-which(names(v) == plural)]
  }
  return(v)
}
for (n in names(v)) {
  n_pl <- paste(n, 's', sep='')
  v <- aggr_fn(v, n, n_pl)
  n_pl <- paste(n, 'es', sep='')
  v <- aggr_fn(v, n, n_pl)
}
return(v)
}
# transform plural to singular
td_mtx <- TermDocumentMatrix(vdocs)
v <- sort(rowSums(as.matrix(td_mtx)), decreasing=TRUE)
v <- aggregate.plurals(v)
tdm.df <- data.frame(word=names(v), freq=v)


# export
write.table(tdm.df, "results/tdm_df.csv", sep = ";", row.names = F)
