# WordCloud-LakePulse

Author: Anaïs Oliva

Correspondence: anais.oliva@usherbrooke.ca

## Overview - Usage

A WordCloud analysis was performed on 27 papers published or preprinted by Lake Pulse members.
The input text included titles, abtracts and keywords.

This work was included in the final Lake Pulse report.

## Script contents

LP_papers_short.txt: The input text which include titles, abtracts and keywords of the articles.

1. *1_text_processing_1word.R*: pre-processing of individual article words.
2. *2_text_gram_analysis.R*: pre-processing of group of words.

After using *2_text_gram_analysis.R*, a manual cleaning of the output file *2ngram_df.csv* was necessary to combine the frequency of similar words (*e.g.,* land use, land cover and LULC) or remove not significant words (*e.g.,* provided, number, broad, etc...).

4. *3_wordcloud.R*: Plot wordcloud for both individual and group of words.


## Notes

Packages used:
*wordcloud*
*tm*
*stringr*
*tibble*
*tidytext*
*dplyr*
*tidyr*

## References
Basic wordcloud in R: https://r-graph-gallery.com/15-wordcloud
n-gram analysis: https://books.psychstat.org/textmining/word-frequency.html
