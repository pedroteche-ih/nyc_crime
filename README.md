# Large Dataset Clustering - Crime Hotspots in Brooklyn
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)]
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

The purpose of this project was to address two common challenges in clustering analysis, specifically unsupervised learning: handling large datasets and performing spatial and temporal clustering. To accomplish this, I selected a dataset from the [NYC Open Data repository](https://data.cityofnewyork.us/) and developed a model to identify crime hotspots in Brooklyn using the [BIRCHSCAN procedure](https://www.sciencedirect.com/science/article/abs/pii/S0957417421009283).

Crime hotspot detection is a [well-defined problem in data-driven policing](https://www.sciencedirect.com/science/article/abs/pii/S0957417421009283), and there are many existing approaches for identifying crime hotspots. In this analysis, I will focus on building a solution for identifying street-level crime hotspots in Brooklyn using the BIRCHSCAN algorithm. The BIRCHSCAN algorithm is a scalable and efficient clustering method that is well-suited for large datasets.

## Libraries

1. `pandas` & `numpy` - data manipulation and analysis;
1. `sklearn` - machine learning;
1. `matplotlib` & `seaborn` - data visualization;
1. `osmnx` - street network analysis.

## Dataset

The dataset used for this project was obtained from the NYC Open Data repository. It includes crime incident reports with details such as date, time, location, type of crime, victimology. The dataset was preprocessed to include only **felonies** that occurred in **Brooklyn** between 2000 & 2022, which resulted in a dataset of 751,972 rows.

## Methodology

1. Outlier cleaning (threshold-based);
1. Feature engineering, especifically the creation of a new feature `time_meters` based on neighborhood-distance evaluations, allowing the use of both temporal and spatial features in hotspot detection;
1. BIRCHSCAN clustering algorithm;
1. Visualization and analysis of results using `osmnx` and `matplotlib`.

## Results

The analysis revealed several crime hotspots in Brooklyn, with a high concentration of incidents occurring in specific neighborhoods and at certain times. By examining both the spatial and temporal distribution of crime, the analysis provided a more nuanced understanding of the nature of criminal activity in the borough. These findings can help law enforcement and community leaders to better understand the patterns of crime in Brooklyn and allocate resources more effectively.

## Conclusion

In conclusion, this project demonstrates the use of the BIRCHSCAN algorithm to efficiently identify crime hotspots in Brooklyn using a large and complex dataset that includes both geographical and temporal dimensions. The results provide valuable insights into the spatial and temporal distribution of crime in the borough, which can inform decision-making and resource allocation for law enforcement and community leaders.

## References

1. https://data.cityofnewyork.us/Public-Safety/NYPD-Complaint-Data-Historic/qgea-i56i
1. https://www.ojp.gov/pdffiles1/nij/209393.pdf
1. https://www.sciencedirect.com/science/article/abs/pii/S0957417421009283
1. https://www.sciencedirect.com/science/article/pii/S1877050916315824