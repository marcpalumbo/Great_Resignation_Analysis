# Great_Resignation_Analysis

## Authors & Acknowledgements: 
[Marc Palumbo](https://www.linkedin.com/in/marcpalumbo53/), [Roxann Lopez](https://www.linkedin.com/in/roxann-lopez-4a2b211a/), [Heather Bailey](https://www.linkedin.com/in/heather-bailey-70b50a22a/), [Gustavo Sanchez](https://www.linkedin.com/in/gustavosanchez626/)

<table><tr>

---

## Technologies | Languages | Libraries | IDE | Data Source: 
<details>
<summary>Software and IDE:</summary>

- Python
- Pandas 
- Visual Studio Code
- Jupyter Notebook
- Libraries:
  - NumPy
  - Datetime
  - Matplotlib
  - Scikit-learn
  - Skforecast

</details>

<details>
<summary>Dataset:</summary>

- _Original_: CAEMP25N_BEA.csv
- _Transformed_: Cleaned_geographic_Data.csv
</details>

## Objective: 
Using Time Series Forecasing in Supervised Machine Learning to predict if the three industries most affected during the "Great Resignation":
- Manufacturing
- Education and Health Services
- Hospitality 

or three industries least affected during the "Great Resignation":
- Finance
- IT
- Professional & Business

will be affected again during another recession or economic and cultural phenomena such as the ongoing "Great Resignation" by setting and implementing a time series forecasting model in one year increments due to the availability of the data to then be used for future development and innovation with more collection of feature imputs and historical data being available. Time Series Forecasting pertains to the sequence of observations collected in constant time intervals be it daily, monthly, quarterly or yearly. In this case since the collection of data is in yearly increments, we will conduct the modeling in either Beginning of the Year or End of the Year frequency intervals. Time Series Analysis involves developing models used to describe the observed time series and understand the "why" behind its dataset.

## Data Description:
The data that will be used for our Machine Learning model was collected from the [U.S. Bureau of Economic Analysis (BEA)](https://www.bea.gov/about/who-we-are). BEA is an agency of the Department of Commerce and produces vast economic accounts statistics that aid government and business decision-makers, researchers, as well as the American public to follow and understand the performance of the nation's economy. BEA collects source data, conducts research and analysis, develops and implements estimation methodologies, and disseminates statistics to the public on a national level. Our group decided to use the _Total full-time and part-time employment by NAICS industry 1/_ or `CAEMP25N` from BEA's Regional Data - GDP and Personal Income from the Fiscal Years of 2016 to 2020 largely in part for its vast collection of employment data from multiple industries and recognition. The estimates for 2011-2016 are based on the 2012 NAICS and the estimates for 2017 forward are based on the 2017 NAICS.2/ while excludeing limited partners. In the dataset each state is grouped by either _Nonmetropolitan portion_ which includes micropolitan counties and _Metropolitan Areas_ which are defined (geographically delineated) by the Office of Management and Budget (OMB) bulletin no. 20-01 issued March 6, 2020. _E_ in the original dataset are the estimate that constitutes the major portion of the true estimate. _(D)_ in the original dataset is a value "not shown" to avoid disclosure of confidential information; estimates are included in higher-level totals. As the time of collection of the data, the dataset was last updated November 16, 2021 for the new statistics for 2020; revised statistics for 2016-2019. The reason why our group chose this dataset from BEA was primarily for the reason that the dataset and ultimately the organization prepares national, regional, industry, and international accounts that present essential information on such key issues as economic growth, regional economic development, interindustry relationships, and the nation's position in the world economy that was crucial for our project and be used for forecasting purposes.

## Machine Learning Approach: 
<details>
<summary>Preliminary Data Pre-Processing:</summary>

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
- Incorporated the python zip() function for parallel iteration to have a new DataFrame with the six desired industries for forecasting. 
- Split the _GeoName_ column to _Metropolitan portion_ and _Nonmetropolitan portion_.
- Reorder of columns in the new DataFrame. 
- Label encode Geoname column with '0' being for _Metropolitan portion_ and '1' for _Nonmetropolitan portion_.
- Created a new DataFrame with pandas iterrows() method to generate an interator object of the DataFrame, in this case generating a _Year_ column for time series forecasting. 
- Converted the new 'Year' column from a scalar, array-like, Series or DataFrame/dict-like to a pandas datetime object.
- Label encode the _State_ column. 
- Label encode the _Description_ column.
- Reindex the _Year_ column as a index. 

</details>

<details>
<summary>Preliminary Feature Engineering and Preliminary Feature Selection:</summary>

- Based on our project question and objectives, our target variable is the year 2020 for the reason that our objective is to set up a time series forecasting model for a one year iteration to stand as a prototype for an upgraded model with more input features and collected data across industries. 
- Feature variables are State, Geographic Name, and Industry Description. 

</details>

Modeling:
During the implementation and exploratory stage of our Machine Learning model, we initially had planned to use regression models but it became soon apparent that our question we hoped to have answered is a time series related problem. For that reason our group then shifted our interest to time series forecasting models. For this reason we decided to used `Skforecast` that is a python library that eases using scikit-learn regressors as multi-step forecasters. It also works with any regressor compatible with the scikit-learn API (pipelines, CatBoost, LightGBM, XGBoost, Ranger etc..). We decided to use `Recursive autoregressive forecasting` and `ForecasterAutoreg` that inputs frequency distribution. As the time of this deliverable submission, the _Year_ index has duplicate values and in order to use `Skforecast` the frequency has to be set as 'AS' or beginning of the year with unique values. In the upcoming deliverables, the _Year_ index will be converted to datetime again with additional parameters and will be grouped by index, get the cumulative count and convert that to timedelta with unique values being in miliseconds.