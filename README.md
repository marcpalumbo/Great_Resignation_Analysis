<p align="center">
  <img width="900" height="400" src="https://user-images.githubusercontent.com/107281474/202018616-8c912f9a-361a-43da-93b7-178dd82e1912.png">
</p>

<table><tr>

---
# Great_Resignation_Analysis

### Contributors & Acknowledgements:

- [**Marc Palumbo**](https://www.linkedin.com/in/marcpalumbo53/) [![GitHub](https://img.shields.io/badge/--181717?logo=github&logoColor=ffffff)](https://github.com/marcpalumbo)
- [**Roxann Lopez**](https://www.linkedin.com/in/roxann-lopez-4a2b211a/) [![GitHub](https://img.shields.io/badge/--181717?logo=github&logoColor=ffffff)](https://github.com/lopezroxann)
- [**Gus Sanchez**](https://www.linkedin.com/in/gustavosanchez626/) [![GitHub](https://img.shields.io/badge/--181717?logo=github&logoColor=ffffff)](https://github.com/g626s)
- [**Heather Bailey**](https://www.linkedin.com/in/heather-bailey-70b50a22a/) [![GitHub](https://img.shields.io/badge/--181717?logo=github&logoColor=ffffff)](https://github.com/HeatherBailey0630)

This project and the technical knowledge and skills used for analysis are largley in part due to the the guidance and direction of Khaled Karmen and the instructional team at UC Berkeley Data Analytics & Visualization Cohort. 

<table><tr>

---
## Technologies | Languages | IDE | Data Source: 
<details>
<summary>Software and IDE:</summary>

- [![Python](https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue)](https://www.python.org/)
- [![Pandas](https://img.shields.io/badge/Pandas-2C2D72?style=for-the-badge&logo=pandas&logoColor=white)](https://pandas.pydata.org/)
  - [![Numpy](https://img.shields.io/badge/Numpy-777BB4?style=for-the-badge&logo=numpy&logoColor=white)](https://numpy.org/)
  - ![Matplotlib](https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black)
  - ![scikit-learn](https://img.shields.io/badge/scikit--learn-%23F7931E.svg?style=for-the-badge&logo=scikit-learn&logoColor=white)
  - ![Skforecast](https://img.shields.io/badge/Skforecast-%230C55A5.svg?style=for-the-badge&logo=scipy&logoColor=%white)
- [![VS Code](https://img.shields.io/badge/VSCode-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white)](https://code.visualstudio.com/)
- [![Jupyter Notebook](https://img.shields.io/badge/jupyter-%23FA0F00.svg?style=for-the-badge&logo=jupyter&logoColor=white)](https://jupyter.org/)
- [![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
- ![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=Tableau&logoColor=white)

</details>

<details>
<summary>Data Sources:</summary>

- [U.S. Bureau of Labor Statistics](https://www.bls.gov/data/#employment)
- [Federal Reserve Economic Data | FRED | St. Louis Fed](https://fred.stlouisfed.org/)
  - [All Employees - Manufacturing](https://fred.stlouisfed.org/series/MANEMP)
  - [All Employees - Education and Health Services](https://fred.stlouisfed.org/series/USEHS)
  - [All Employees - Leisure and Hospitality](https://fred.stlouisfed.org/series/USLAH)
  - [All Employees - Financial Activities](https://fred.stlouisfed.org/series/USFIRE)
  - [All Employees - IT](https://fred.stlouisfed.org/series/USINFO)
  - [All Employees - Professional and Business](https://fred.stlouisfed.org/series/USPBS)
- [U.S. Bureau of Economic Analysis (BEA)](https://apps.bea.gov/iTable/?reqid=70&step=1&acrdn=6#eyJhcHBpZCI6NzAsInN0ZXBzIjpbMSwyNCwyOSwyNSwzMSwyNiwyNywzMCwzMF0sImRhdGEiOltbIlRhYmxlSWQiLCIzMyJdLFsiQ2xhc3NpZmljYXRpb24iLCJOQUlDUyJdLFsiTWFqb3JfQXJlYSIsIjEwIl0sWyJTdGF0ZSIsWyIxMCJdXSxbIkFyZWEiLFsiWFgiXV0sWyJTdGF0aXN0aWMiLCItMSJdLFsiVW5pdF9vZl9tZWFzdXJlIiwiTGV2ZWxzIl0sWyJZZWFyIixbIjIwMjAiLCIyMDE5IiwiMjAxOCIsIjIwMTciLCIyMDE2IiwiMjAxNSIsIjIwMTQiXV0sWyJZZWFyQmVnaW4iLCItMSJdLFsiWWVhcl9FbmQiLCItMSJdXX0=)
- [Kaggle | HR Analytics - Attrition](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)

</details>
  
## Introduction 

The ultimate goal of this analysis is to determine the underlying factors that led to the recent phenomenon being dubbed “The Great Resignation.” Our team decided on this topic after meeting for the first time. We decided that this topic was intriguing and applicable to the project, and the overall sentiment of each of us as individuals as we progressed through our careers. It seems that workplace cultures and the willingness to submit to old school working conditions has decreased over the recent years, our goal is to find out why. 

We believe that younger generations are placing more emphasis on work/life balance, compensation transparency, remote work, and company culture. Our goal for this project is to find, process, and use the data we can find to see what has caused this shift around working conditions and employment. 

### _Questions we Hope to Answer_

- What are the contributing factors to individuals resigning from their jobs?
- Is there a correlation between age (retirement, etc.), job satisfaction, rate of pay, and resignation?
- What will future U.S. economic trends look like?
- What industries will be most impacted in the future by resignations?

  
## Project Methodology

**Data Cleaning/ETL:** Python, Pandas, Jupyter Notebook, CSV file, 

**Database:** SQL, Postgress

**Machine Learning:** Python, SKforecast

**Visualization and Presentation:** Tableau, Matplotlib, Google Slides

<img width="820" alt="Rox_Outline1" src="https://user-images.githubusercontent.com/106620821/201538191-d9fe78e2-7550-4187-8643-3c4ae70182da.png">


## Data Exploration

One of the biggest challenges we faced in week one was gathering usable data that supported the project. Before starting we were optimistic that there would be an abundance of data to choose from that would support our initial thoughts on the subject. We turned out to be wrong and realized that this part of our project would take more time than we had projected. Thankfully we discovered these datasets containing (describe). 

## Data Cleaning/Transformation
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

## Machine Learning
During the implementation and exploratory stage of our Machine Learning model, we initially had planned to use regression models but it became soon apparent that our question we hoped to have answered is a time series related problem. For that reason our group then shifted our interest to time series forecasting models. For this reason we decided to used `Skforecast` that is a python library that eases using scikit-learn regressors as multi-step forecasters. It also works with any regressor compatible with the scikit-learn API (pipelines, CatBoost, LightGBM, XGBoost, Ranger etc..). We decided to use `Recursive autoregressive forecasting` and `ForecasterAutoreg` that inputs frequency distribution. As the time of this deliverable submission, the _Year_ index has duplicate values and in order to use `Skforecast` the frequency has to be set as 'AS' or beginning of the year with unique values. In the upcoming deliverables, the _Year_ index will be converted to datetime again with additional parameters and will be grouped by index, get the cumulative count and convert that to timedelta with unique values being in miliseconds.
- Based on our project question and objectives, our target variable is the year 2020 for the reason that our objective is to set up a time series forecasting model for a one year iteration to stand as a prototype for an upgraded model with more input features and collected data across industries. 
- Feature variables are State, Geographic Name, and Industry Desc

## Database

We ultimately decided that PGAdmin would be a suitable tool for storing our data in a database for this project. We realized that since we would collectively be using less than 100,000 rows of data, there would be no reason to you Amazon Web Services or any other big data service for monetary and practical reasons. 
  

Pictured below is our schema used to establish our tables with primary and foreign keys. Initially, we stored everything as static data just to ensure that we were capable of storing and querying data successfully. This schema along with manual imports allowed us to store the static data first. We then focused on making the database synchronous with our jupyter notebooks and machine learning models. ![Basic Database Schema](https://github.com/marcpalumbo/Great_Resignation_Analysis/blob/main/Images/sql_schema_marc.png)


We were successfully able to connect our machine learning model to our database via Jupyter Notebook using the code pictured below: 
![Connection to Postgres](https://github.com/marcpalumbo/Great_Resignation_Analysis/blob/main/Images/SQL_connection_to_jupyter.png)

In the screenshot above, we import the necessary modules to create our database engine and connect it to the notebook we are using. The to_sql portion of our code in the fourth block establishes the table name, references the engine created, and will replace the table with new or altered data each time it is run (if applicable). This will allow for our database to be updated properly should we ever find new data in the future and want to add to our models and database. 

The following  blocks demonstrate how we are able to pull data from the our postgres database into a jupyter notebook and create a pandas dataframe. There may be other ways to do this but this was a method we found to be successful after trying multiple times, so we decided to go with it as it is functioning in the timeframe we need it to function. 

Ultimately, our database is not very complex, consisting of two main tables that we used for our machine learning models. However, should we every wish to add to our project, we have the framework already establishing to do so. Pictured below is the query we used to showcase the most effected industries in descending order:
![Most Effective Industries in Descending Order](https://github.com/marcpalumbo/Great_Resignation_Analysis/blob/main/Images/SQL_query_example.png) 
  


## Visualization

(Link to Tableau story)

[Link to Presentation](https://docs.google.com/presentation/d/1bThWSl5nYWyTkOyABuBi8tHJWkGNRaSYkgRRS5pCHq0/edit#slide=id.g17bee92606e_0_102)

## Challenges and Obstacles 

One of the biggest challenges we faced in week one was gathering usable data that supported the project. Before starting, we were optimistic that there would be an abundance of data to choose from that would support our initial thoughts on the subject. We turned out to be wrong, and realized that this part of our project will take more time than we had projected. We were confident that once we got the data we needed, the ETL process and steps thereafter would come along nicely. 

## Conclusion and Future Recommendations
