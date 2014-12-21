
Dev Data Products
========================================================
author: Issaka OUEDRAOGO
date:  21/12/2014

My App
========================================================

This is my reproducible pitch presentation, where I explain what I did in my simple app project.
 
This project just works with Heart disease dataset and makes boxplot of two variables (sex vs trestbps OR chest_pain vs trestbps OR fbs vs trestbps OR exang vs trestbps OR disease vs trestbps) which the user choose the predictor and the the outcome is always the "trestbps".
 
Click here to access :  https://issakao.shinyapps.io/DevelopDataProd/

Summary data
========================================================


```r
HeartData <- read.table("http://eric.univ-lyon2.fr/~ricco/tanagra/fichiers/heart_for_rattle.txt",
                        header=TRUE, sep="", na.strings="NA", dec=".", strip.white=TRUE)
summary(HeartData)
```
    age            sex            chest_pain     trestbps          chol      
 Min.   :28.00   female: 77   asympt     :120   Min.   : 92.0   Min.   : 85.0  
 1st Qu.:42.00   male  :209   atyp_angina:103   1st Qu.:120.0   1st Qu.:211.0  
 Median :49.00                non_anginal: 52   Median :130.0   Median :248.0  
 Mean   :47.85                typ_angina : 11   Mean   :132.8   Mean   :249.4  
 3rd Qu.:54.00                                  3rd Qu.:140.0   3rd Qu.:276.0  
 Max.   :66.00                                  Max.   :200.0   Max.   :603.0  
 fbs                      restecg       thalach      exang         disease   
 f:266   left_vent_hyper      :  6   Min.   : 82.0   no :199   negative:182  
 t: 20   normal               :230   1st Qu.:122.0   yes: 87   positive:104  
         st_t_wave_abnormality: 50   Median :140.0                           
                                     Mean   :139.2                           
                                     3rd Qu.:155.0                           
                                     Max.   :190.0 
```

How it works
========================================================

·The user select the predictor (x) from the dropdown

·When the user make a choice, the plot is updated.

·The user can check/uncheck the outlier box  if the outliers are to be considered or not in the plot.

Sample Plot 1
========================================================

![plot of chunk unnamed-chunk-2](slide-figure/unnamed-chunk-2-1.png) 
