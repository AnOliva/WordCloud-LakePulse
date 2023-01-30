# WordCloud-LakePulse

Author: Anaïs Oliva

Correspondence: anais.oliva@usherbrooke.ca

## Overview - Usage

A WordCloud analysis was performed on 27 published or preprint papers by Lake Pulse members in R (see references for the full list of articles included).

The input text includes titles, abtracts and keywords.

This work was included in the final Lake Pulse report.

![This is an image](https://github.com/AnOliva/WordCloud-LakePulse/blob/main/results/wordcloud_LP_2ngram.png)

## Folder content

LP_papers_short.txt: The input text which include titles, abtracts and keywords of the articles.

1. *1_text_processing_1word.R*: pre-processing of individual article words.
2. *2_text_gram_analysis.R*: pre-processing of group of words.

After using *2_text_gram_analysis.R*, a manual cleaning of the output file *2ngram_df.csv* was necessary to combine the frequency of similar words (*e.g.,* land use, land cover and LULC) or remove not significant words (*e.g.,* provided, number, broad, etc...).

4. *3_wordcloud.R*: Plot wordcloud for both individual and group of words.


## Notes

R packages used:

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

Articles included in the analysis:

1. Baud, A., Aulard, C., Ghanbari, H., Fradette, M., Antoniades, D., Del Giorgio, P., ... & Gregory‐Eaves, I. (2022). A framework for 210Pb model selection and its application to 37 cores from Eastern Canada to identify the dynamics and drivers of lake sedimentation rates. Earth Surface Processes and Landforms, 47(10), 2518-2530.

2. Cheng, Y., Baud, A., Gregory-Eaves, I., Simmatis, B., Smol, J. P., & Griffiths, K. (2022). Climate change and nutrient enrichment altering sedimentary diatom assemblages since pre-industrial time: evidence from Canada’s most populated ecozone. Journal of Paleolimnology, 1-19.

3. Cremella, B., Bélanger, S., & Huot, Y. (2022). Aquatic particulate absorption coefficient combining extraction and bleaching optimized for inland waters. Limnology and Oceanography: Methods, 20(7), 451-465.

4. Deutsch, E. S., Fortin, M. J., & Cardille, J. A. (2022). Assessing the current water clarity status of~ 100,000 lakes across southern Canada: A remote sensing approach. Science of The Total Environment, 826, 153971.

5. Deutsch, E. S., Cardille, J. A., Koll-Egyed, T., & Fortin, M. J. (2021). Landsat 8 lake water clarity empirical algorithms: Large-scale calibration and validation using government and citizen science data from across Canada. Remote Sensing, 13(7), 1257.

6. Garner, R., Kraemer, S., Onana, V. E., Huot, Y., & Walsh, D. A. (2022). Genome-resolved community structure and function of freshwater bacteria at a continental scale. bioRxiv, 2022-08.

7. Garner, R. E., Kraemer, S. A., Onana, V. E., Huot, Y., Gregory-Eaves, I., & Walsh, D. A. (2022). Protist diversity and metabolic strategy in freshwater lakes are shaped by trophic state and watershed land use on a continental scale. Msystems, 7(4), e00316-22.

8. Garner, R. E., Gregory-Eaves, I., & Walsh, D. A. (2020). Sediment metagenomes as time capsules of lake microbiomes. Msphere, 5(6), e00512-20.

9. Griffiths, K., Jeziorski, A., Antoniades, D., Beaulieu, M., Smol, J. P., & Gregory-Eaves, I. (2022). Pervasive changes in algal indicators since pre-industrial times: a paleolimnological study of changes in primary production and diatom assemblages from~ 200 Canadian lakes. Science of The Total Environment, 838, 155938.

10. Griffiths, K., Jeziorski, A., Paquette, C., Taranu, Z. E., Baud, A., Antoniades, D., ... & Gregory-Eaves, I. (2021). Multi-trophic level responses to environmental stressors over the past~ 150 years: Insights from a lake-rich region of the world. Ecological Indicators, 127, 107700.

11. Huot, Y., Brown, C. A., Potvin, G., Antoniades, D., Baulch, H. M., Beisner, B. E., ... & Walsh, D. A. (2019). The NSERC Canadian Lake Pulse Network: A national assessment of lake health providing science for water management in a changing climate. Science of The Total Environment, 695, 133668.

12. Koll-Egyed, T., Cardille, J. A., & Deutsch, E. (2021). Multiple images improve lake CDOM estimation: Building better landsat 8 empirical algorithms across southern canada. Remote Sensing, 13(18), 3615.

13. Kraemer, S. A., Barbosa da Costa, N., Oliva, A., Huot, Y., & Walsh, D. A. (2022). A resistome survey across hundreds of freshwater bacterial communities reveals the impacts of veterinary and human antibiotics use. Frontiers in Microbiology, 3727.

14. Kraemer, S. A., Barbosa da Costa, N., Shapiro, B. J., Fradette, M., Huot, Y., & Walsh, D. A. (2020). A large-scale assessment of lakes reveals a pervasive signal of land use on bacterial communities. The ISME journal, 14(12), 3011-3023.

15. MacKeigan, P. W., Garner, R. E., Monchamp, M. È., Walsh, D. A., Onana, V. E., Kraemer, S. A., ... & Gregory-Eaves, I. (2022). Comparing microscopy and DNA metabarcoding techniques for identifying cyanobacteria assemblages across hundreds of lakes. Harmful Algae, 113, 102187.

16. Oliva, A., Garner, R. E., Walsh, D., & Huot, Y. (2022). The occurrence of potentially pathogenic fungi and protists in Canadian lakes predicted using geomatics, in situ and satellite-derived variables: towards a tele-epidemiological approach. Water Research, 209, 117935.

17. Oliva, A., Onana, V. E., Garner, R. E., Kraemer, S. A., Fradette, M., Walsh, D. A., & Huot, Y. (2023). Geospatial analysis reveals a hotspot of fecal bacteria in Canadian prairie lakes linked to agricultural non-point sources. Water Research, 119596.

18. Pahlevan, N., Smith, B., Alikas, K., Anstee, J., Barbosa, C., Binding, C., ... & Ruiz-Verdù, A. (2022). Simultaneous retrieval of selected optical water quality indicators from Landsat-8, Sentinel-2, and Sentinel-3. Remote Sensing of Environment, 270, 112860.

19. Pan, Y., Bélanger, S., & Huot, Y. (2022). Evaluation of atmospheric correction algorithms over lakes for high-resolution multispectral imagery: Implications of adjacency effect. Remote Sensing, 14(13), 2979.

20. Paquette, C., Griffiths, K., Gregory‐Eaves, I., & Beisner, B. E. (2022). Zooplankton assemblage structure and diversity since pre‐industrial times in relation to land use. Global Ecology and Biogeography, 31(11), 2337-2352.

21. Paquette, C., Gregory‐Eaves, I., & Beisner, B. E. (2022). Environmental drivers of taxonomic and functional variation in zooplankton diversity and composition in freshwater lakes across Canadian continental watersheds. Limnology and Oceanography, 67(5), 1081-1097.

22. Paquette, C., Gregory‐Eaves, I., & Beisner, B. E. (2021). Multi‐scale biodiversity analyses identify the importance of continental watersheds in shaping lake zooplankton biogeography. Journal of Biogeography, 48(9), 2298-2311.

23. Pérez-Jvostov, F., Sutherland, W. J., Barrett, R. D., Brown, C. A., Cardille, J. A., Cooke, S. J., ... & Gregory-Eaves, I. (2020). Horizon scan of conservation issues for inland waters in Canada. Canadian Journal of Fisheries and Aquatic Sciences, 77(5), 869-881.

24. Sánchez Schacht, J. R., MacKeigan, P. W., Taranu, Z. E., Huot, Y., & Gregory-Eaves, I. (2022). Agricultural and urban land use explain substantial variation in lake water quality across national-scale physiographic and climatic gradients. bioRxiv, 2022-08.

25. Simmatis, B., Baud, A., Gregory-Eaves, I., Francus, P., & Smol, J. P. (2020). Subfossil Simuliidae track past river flow into an industrially contaminated lake. Journal of Paleolimnology, 64(3), 179-192.

26. St-Gelais, N. F., Lapierre, J. F., Siron, R., & Maranger, R. (2020). Evaluating Trophic Status as a Proxy of Aquatic Ecosystem Service Provisioning on the Basis of Guidelines. BioScience, 70(12), 1120-1126.

27. Wight, J., Varin, M. P., Robertson, G. J., Huot, Y., & Lang, A. S. (2020). Microbiology in the field: construction and validation of a portable incubator for real-time quantification of coliforms and other bacteria. Frontiers in Public Health, 8, 607997.
