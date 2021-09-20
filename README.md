# Earthquake-Nowcasting-course-project
Finding EPS values for two cities of Taiwan given their earthquake data.

Assignment-2.docx :
This contains the problem statement.

Dataset_Taiwan.csv :
This contains the dataset.

Earthquake Nowcasting.ipynb : 
1. This file reads csv data. 
2. Uses the data to find interevent counts between two big earthquakes. 
3. Later it finds the number of small earthquakes after the last big earthquake for two cities Taipei and Tainan (analyzing a circle of radius 200 km around each city)

Distribution Fits, MLE and KS test.R :
1. This file uses the data of interevent counts between two big earthquakes and fits it with different distribution and find the parameters for best fit.
2. Then it also performs KS test on the data
3. At the end it uses the number of small earthquakes after the last big earthquake for two cities and find their EPS score

Results Folder contains all the final results of analysis.

## Contributors -
1. Arpit Sodani
2. Shivangi Goel
