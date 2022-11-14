# Great_Resignation_Analysis

## Contributors

[**Marc Palumbo**](https://github.com/marcpalumbo)

[**Roxann Lopez**](https://github.com/lopezroxann)

[**Gus Sanchez**](https://github.com/g626s)

[**Heather Bailey**](https://github.com/HeatherBailey0630)

## Introduction 

The ultimate goal of this analysis is to determine the underlying factors that led to the recent phenomenon being dubbed “The Great Resignation.” Our team decided on this topic after meeting for the first time. We decided that this topic was intriguing and applicable to the project, and the overall sentiment of each of us as individuals as we progressed through our careers. It seems that workplace cultures and the willingness to submit to old school working conditions has decreased over the recent years, our goal is to find out why. 

We believe that younger generations are placing more emphasis on work/life balance, compensation transparency, remote work, and company culture. Our goal for this project is to find, process, and use the data we can find to see what has caused this shift around working conditions and employment. 

### Data Sources

- [U.S. Bureau of Labor Statistics](https://www.bls.gov/data/#employment)
- [FRED | All Employees - Manufacturing](https://fred.stlouisfed.org/series/MANEMP)
- [BEA | Bureau of Economic Analysis](https://apps.bea.gov/iTable/?reqid=70&step=1&acrdn=6#eyJhcHBpZCI6NzAsInN0ZXBzIjpbMSwyNCwyOSwyNSwzMSwyNiwyNywzMCwzMF0sImRhdGEiOltbIlRhYmxlSWQiLCIzMyJdLFsiQ2xhc3NpZmljYXRpb24iLCJOQUlDUyJdLFsiTWFqb3JfQXJlYSIsIjEwIl0sWyJTdGF0ZSIsWyIxMCJdXSxbIkFyZWEiLFsiWFgiXV0sWyJTdGF0aXN0aWMiLCItMSJdLFsiVW5pdF9vZl9tZWFzdXJlIiwiTGV2ZWxzIl0sWyJZZWFyIixbIjIwMjAiLCIyMDE5IiwiMjAxOCIsIjIwMTciLCIyMDE2IiwiMjAxNSIsIjIwMTQiXV0sWyJZZWFyQmVnaW4iLCItMSJdLFsiWWVhcl9FbmQiLCItMSJdXX0=)
- [Kaggle | HR Analytics - Attrition](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)

### Questions we Hope to Answer

- What are the contributing factors to individuals resigning from their jobs?
- Is there a correlation between age (retirement, etc.), job satisfaction, rate of pay, and resignation?
- What will future U.S. economic trends look like?
- What industries will be most impacted in the future by resignations?

### Communication Protocols 

Our team has determined that communication protocols will be as follows:

- Responsiveness and transparency are important, we have agreed that slack messages and updates will be provided as work is being done. 

- Sharing and collaboration are some of the more important aspects of getting this project done, in addition to our Github Repository, we have created a shared google drive. We believed that the google drive was a quicker way to share our resources and files as we progress through the project 

- We have agreed to at least two meeting times per week, with additional meetings being scheduled on a weekly basis determined by necessity and amount of work needed to be completed. It is likely this will be needed each week. Our group slack channel has been active on a daily basis with news and updates. We have thus far been meeting an extra 1-2x per week via zoom.

### Technologies Used

**Data Cleaning/ETL:** Python, Pandas, Jupyter Notebook, CSV file, 

**Database:** SQL, Postgress

**Machine Learning:** Python, SKforecast

**Visualization and Presentation:** Tableau, Matplotlib, Google Slides

<img width="820" alt="Rox_Outline1" src="https://user-images.githubusercontent.com/106620821/201538191-d9fe78e2-7550-4187-8643-3c4ae70182da.png">


### Data Exploration

One of the biggest challenges we faced in week one was gathering usable data that supported the project. Before starting we were optimistic that there would be an abundance of data to choose from that would support our initial thoughts on the subject. We turned out to be wrong and realized that this part of our project would take more time than we had projected. Thankfully we discovered these datasets containing (describe). 

### Data Cleaning/Transformation
- Reduced the data set to include only the selected features we will use for time series forecasting.
- Count the number of null values in the raw dataset and drop the null values.
- Delete _GeoFips_ and _Line Code_ column as they are references to another directory on the BEA website. 
- Drop rows where the _Year_ columns has data with _(D)_ in it and made a duplicate DataFrame to not interfere with the original. 
- Drop rows where the _Year_ column have data with _E_ from columns and replacing them in the DataFrame with empty values. 
- Drop rows where the _Year_ column have data with _0_ values.
- Converting the _Year_ columns to integers for Machine Learning Modeling.
- Created a dictionary to hold the description names as well as a new dictionary with an additional string "- " to reformat the column then be filtered with 0 values to then filter to remove descrtiptions that were the total sum of a partiular sectory or industry that would skew the data and model.
- Created a for loop in which if any row in the _Description_ column contained the added partial string "- ", the value would be appended to _0_. 
- Incorporated the python zip() function for parallel iteration to have a new DataFrame without the total sum of Descriptions. 
- Created a dictionary to hold the description names as well as a new dictionary with an additional string "- " to reformat the column then be filtered with 0 values to then filter to only have the six industries that will be used in the model.
- Created a for loop in which if any row in the _Description_ column contained the added partial string "- ", the value would be appended to _0_. 

<p align="center">
<img width="751" alt="skforecast_processing" src="https://user-images.githubusercontent.com/107281474/201575890-56cb1e6d-3faf-42e6-984c-8723544ea4b6.png">
</p>

- Incorporated the python zip() function for parallel iteration to have a new DataFrame with the six desired industries for forecasting. 
- Split the _GeoName_ column to _Metropolitan portion_ and _Nonmetropolitan portion_.
- Reorder of columns in the new DataFrame. 
- Label encode Geoname column with '0' being for _Metropolitan portion_ and '1' for _Nonmetropolitan portion_.
- Created a new DataFrame with pandas iterrows() method to generate an interator object of the DataFrame, in this case generating a _Year_ column for time series forecasting. 

<p align="center">
<img width="760" alt="skforecast_itterow" src="https://user-images.githubusercontent.com/107281474/201576119-db7a2090-cd69-4d0b-b5f3-c4dbce9617e5.png">
</p>

- Converted the new 'Year' column from a scalar, array-like, Series or DataFrame/dict-like to a pandas datetime object.
- Label encode the _State_ column. 
- Label encode the _Description_ column.
- Reindex the _Year_ column as a index. 

### Machine Learning
During the implementation and exploratory stage of our Machine Learning model, we initially had planned to use regression models but it became soon apparent that our question we hoped to have answered is a time series related problem. For that reason our group then shifted our interest to time series forecasting models. For this reason we decided to used `Skforecast` that is a python library that eases using scikit-learn regressors as multi-step forecasters. It also works with any regressor compatible with the scikit-learn API (pipelines, CatBoost, LightGBM, XGBoost, Ranger etc..). We decided to use `Recursive autoregressive forecasting` and `ForecasterAutoreg` that inputs frequency distribution. As the time of this deliverable submission, the _Year_ index has duplicate values and in order to use `Skforecast` the frequency has to be set as 'AS' or beginning of the year with unique values. In the upcoming deliverables, the _Year_ index will be converted to datetime again with additional parameters and will be grouped by index, get the cumulative count and convert that to timedelta with unique values being in miliseconds.
- Based on our project question and objectives, our target variable is the year 2020 for the reason that our objective is to set up a time series forecasting model for a one year iteration to stand as a prototype for an upgraded model with more input features and collected data across industries. 
- Feature variables are State, Geographic Name, and Industry Desc

### Database

### Visualization

(Link to Tableau story)

[Link to Presentation](https://docs.google.com/presentation/d/1bThWSl5nYWyTkOyABuBi8tHJWkGNRaSYkgRRS5pCHq0/edit#slide=id.g17bee92606e_0_102)

### Challenges and Obstacles 

One of the biggest challenges we faced in week one was gathering usable data that supported the project. Before starting, we were optimistic that there would be an abundance of data to choose from that would support our initial thoughts on the subject. We turned out to be wrong, and realized that this part of our project will take more time than we had projected. We were confident that once we got the data we needed, the ETL process and steps thereafter would come along nicely. 

### Conclusion and Future Recommendations
