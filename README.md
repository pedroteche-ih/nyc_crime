# Large Dataset Clustering - Crime Hotspots in Brooklyn

## Introduction

The purpose of this project was to address two common challenges in clustering analysis, specifically unsupervised learning: handling large datasets and performing spatial and temporal clustering. To accomplish this, I selected a dataset from the [NYC Open Data repository](https://data.cityofnewyork.us/) and developed a model to identify crime hotspots in Brooklyn using the [BIRCHSCAN procedure](https://www.sciencedirect.com/science/article/abs/pii/S0957417421009283).

Crime hotspot detection is a [well-defined problem in data-driven policing](https://www.sciencedirect.com/science/article/abs/pii/S0957417421009283), and there are many existing approaches for identifying crime hotspots. In this analysis, I will focus on building a solution for identifying street-level crime hotspots in Brooklyn using the BIRCHSCAN algorithm. The BIRCHSCAN algorithm is a scalable and efficient clustering method that is well-suited for large datasets.

## Libraries

1. `pandas` - data manipulation and analysis;
1. `sklearn` - machine learning;
1. `matplotlib` & `seaborn` - data visualization;
1. `osmnx` - street network analysis.

## Dataset

The dataset used for this project was obtained from the NYC Open Data repository. It includes crime incident reports from January 2019 to June 2022, with details such as date, time, location, and type of crime. The dataset was preprocessed to include only incidents that occurred in Brooklyn, which resulted in a dataset of approximately 502,374 rows.

## Methodology

To identify crime hotspots in Brooklyn, I utilized the BIRCHSCAN algorithm, a scalable and efficient clustering method that is well-suited for large datasets. The BIRCHSCAN procedure was applied to the preprocessed dataset to identify clusters of similar crimes based on their geographic proximity and frequency of occurrence, as well as their temporal patterns. The resulting clusters were then visualized on a map of Brooklyn, providing insights into the spatial and temporal distribution of crime in the borough.

## Results

The analysis revealed several crime hotspots in Brooklyn, with a high concentration of incidents occurring in specific neighborhoods and at certain times. By examining both the spatial and temporal distribution of crime, the analysis provided a more nuanced understanding of the nature of criminal activity in the borough. These findings can help law enforcement and community leaders to better understand the patterns of crime in Brooklyn and allocate resources more effectively.

## Conclusion

In conclusion, this project demonstrates the use of the BIRCHSCAN algorithm to efficiently identify crime hotspots in Brooklyn using a large and complex dataset that includes both geographical and temporal dimensions. The results provide valuable insights into the spatial and temporal distribution of crime in the borough, which can inform decision-making and resource allocation for law enforcement and community leaders.

## References

1. https://data.cityofnewyork.us/Public-Safety/NYPD-Complaint-Data-Historic/qgea-i56i
1. https://www.ojp.gov/pdffiles1/nij/209393.pdf
1. https://www.sciencedirect.com/science/article/abs/pii/S0957417421009283
1. https://www.sciencedirect.com/science/article/pii/S1877050916315824