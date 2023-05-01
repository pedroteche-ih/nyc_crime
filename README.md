# Large Dataset Clustering - Crime Hotspots in Brooklyn

## Introduction

Welcome to my data science project! The purpose of this project was to address two common challenges in clustering analysis, specifically unsupervised learning: handling large datasets and performing geo-spatial and temporal clustering. To accomplish this, I selected a dataset from the NYC Open Data repository and developed a model to identify crime hotspots in Brooklyn using the BIRCHSCAN procedure. The clusters are defined over time as well as geographically.

## Background

Unsupervised learning techniques such as clustering can be a powerful tool for identifying patterns in large datasets. However, the process can become computationally intensive and difficult to interpret when working with very large datasets or incorporating geo-spatial and temporal information. This project aims to address these challenges by utilizing the BIRCHSCAN algorithm to efficiently cluster the NYC crime data and identify hotspots in Brooklyn over both space and time.

## Dataset

The dataset used for this project was obtained from the NYC Open Data repository. It includes crime incident reports from January 2019 to June 2022, with details such as date, time, location, and type of crime. The dataset was preprocessed to include only incidents that occurred in Brooklyn, which resulted in a dataset of approximately 502,374 rows.

## Methodology

To identify crime hotspots in Brooklyn, I utilized the BIRCHSCAN algorithm, a scalable and efficient clustering method that is well-suited for large datasets. The BIRCHSCAN procedure was applied to the preprocessed dataset to identify clusters of similar crimes based on their geographic proximity and frequency of occurrence, as well as their temporal patterns. The resulting clusters were then visualized on a map of Brooklyn, providing insights into the spatial and temporal distribution of crime in the borough.

## Results

The analysis revealed several crime hotspots in Brooklyn, with a high concentration of incidents occurring in specific neighborhoods and at certain times. By examining both the spatial and temporal distribution of crime, the analysis provided a more nuanced understanding of the nature of criminal activity in the borough. These findings can help law enforcement and community leaders to better understand the patterns of crime in Brooklyn and allocate resources more effectively.

## Conclusion

In conclusion, this project demonstrates the use of the BIRCHSCAN algorithm to efficiently identify crime hotspots in Brooklyn using a large and complex dataset that includes both geographical and temporal dimensions. The results provide valuable insights into the spatial and temporal distribution of crime in the borough, which can inform decision-making and resource allocation for law enforcement and community leaders.