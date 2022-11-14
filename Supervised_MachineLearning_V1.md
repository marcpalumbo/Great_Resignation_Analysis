# Great_Resignation_Analysis

### Authors & Acknowledgements: 
[Marc Palumbo](https://www.linkedin.com/in/marcpalumbo53/), [Roxann Lopez](https://www.linkedin.com/in/roxann-lopez-4a2b211a/), [Heather Bailey](https://www.linkedin.com/in/heather-bailey-70b50a22a/), [Gustavo Sanchez](https://www.linkedin.com/in/gustavosanchez626/)

<table><tr>

---

## Resources
<details>
<summary>Dataset:</summary>

- Cleaned_geographic_Data.csv
</details>

<details>
<summary>Software and IDE:</summary>

- Python
- Jupyter Notebook
- Libraries:
  - Numpy
  - Scikit-learn

</details>

## Supervised Machine Learning Modeling 
For the first deliverable for the final project, a provisional machine learning model has been established and will stand in as a prototype or `V1` in for the final machine learning model. This provisional machine learning model with accomplish the following:
- Takes in data from the provisional database
- Outputs label for input data

The provisional machine learning model will take in the data from the provisional database store in postgreSQL and through label encoding we will output appropriate labels for input data for modeling.

Machine learning is the use of statistical algorithms to perform tasks such as learning from data patterns and making predictions. There are many different models and can be divided into three learning categories: _supervised_, _unsupervised_, and _deep_. For our project, which is concerned on predicting if the three industries that were most affected during _The Great Resignation_:
- Health 
- Education
- Hospitality

as well as the three industries least affected:
- IT
- Finance
- Professional & Business

will be affected or show similar numbers and trends again if another enonomic crisis or cultutral phenomena were to happen again in these particular chosen industries. The data that was collected for this portion of our project is Total Full-Time and Part-Time employment by NAICS industry from the Bureau of Economic Analysis focusing only in the U.S. region. The data was successfully preprocessed and filteredm, particularly rows with total sums of a particular sector, to then be converted and implemented to the machine learning model. For the reason that our variables are continous, regression was chosen for the reason that our target variable is the fiscal year '2020' as a base year to then forecast future years on the selected industries. 

## Methodology 
In this project, various supervised machine learning algorithms are described and assessed in their ability to predict if the selected industries will be affected again if another Great Resignation or 'Big Quit' arises. Since this is the first initial stage of the project, the simplist models were chosen first and can be subject to change if anything new develops as the project continues. This section provides a general overview of the theory behind these algorithms:
- _Linear Regression_: Linear Regression is a machine learning algorithm based on supervised learning. It performs a regression task. Regression models a target prediction value based on independent variables. It is mostly used for finding out the relationship between variables and forecasting.
- _Logistic Regression_: Logistic Regression is a traditional classification algorithm involving linear discriminants. The primary output is a probability that the given input point belongs to a certain class. Based on the value of the probability, the model creates a linear boundary separating the input space into two regions. Logistic regression is easy to implement and work well on linearly separable classes, in this case the three industries most and least affected by this recent economic phenomena. 
- _Lasso Regression_: 
Lasso regression is also called Penalized regression method. This method is usually used in machine learning for the selection of the subset of variables. It provides greater prediction accuracy as compared to other regression models. Lasso Regularization helps to increase model interpretation which can help with predicting accuracy to times series forecasting.
- _K-Nearest Neighbors (KNN)_: K-nearest neighbors is a non-parametric algorithm used for classification and regression problems. For regression problems, the idea is to calculate the new instance value by taking the average of its K neighbors. KNN could work well with a small number of features, but struggles significantly when the feature dimensions increase drastically. 

Initital input and framework of Machine Learning model has been implemented and will be updated in the upcoming deliverables.