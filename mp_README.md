# Great Resignation Analysis


## Introduction 

The ultimate goal of this analysis is to determine the underlying factors that led to the recent phenomenon being dubbed “The Great Resignation.” Our team decided on this topic after meeting for the first time. We decided that this topic was intriguing and applicable to the project, and the overall sentiment of each of us as individuals as we progressed through our careers. It seems that workplace cultures and the willingness to submit to old school working conditions has decreased over the recent years, our goal is to find out why. 

We believe that younger generations are placing more emphasis on work/life balance, compensation transparency, remote work, and company culture. Our goal for this project is to find, process, and use the data we can find to see what has caused this shift around working conditions and employment. 

### Deliverable 1 Challenges and Obstacles 

One of the biggest challenges we faced in week one was gathering usable data that supported the project. Before starting, we were optimistic that there would be an abundance of data to choose from that would support our initial thoughts on the subject. We turned out to be wrong, and realized that this part of our project will take more time than we had projected. We were confident that once we got the data we needed, the ETL process and steps thereafter would come along nicely. 

In addition to the difficulties of finding data sources, our cleaning portion was also tough. When we first found data in csv files, we thought it was very usable as is, and would require little transforming. We were wrong. There was some difficulties with repeat rows, NaN values, unneccesary rows and data types. Some fixes were easier than others. The biggest problem we had in cleaning our geographic data was removing columns the were sum totals of the following data. Pictured below:![Raw Data Image](https://github.com/marcpalumbo/Great_Resignation_Analysis/blob/mp_Great_Resignation_Analysis/Images/raw_data_ETL.png))

With a little assistance, we were guided with a way to eliminate these problem rows. We first created a list that had the description column row names as is, then another list that tagged the rows we wanted to delete with a hyphen and a space, that can be seen below: ![Row Names](https://github.com/marcpalumbo/Great_Resignation_Analysis/blob/mp_Great_Resignation_Analysis/Images/column_names.png)

We then used a for loop to eliminate these rows and assigned to the description column pictured below: ![For loop](https://github.com/marcpalumbo/Great_Resignation_Analysis/blob/mp_Great_Resignation_Analysis/Images/replacingnames.png)

This ultimatley got us the cleaned data that we needed in order to create our first draft of our database. 



### Communication Protocols 

Our team has determined that communication protocols will be as follows:

* Responsiveness and transparency are important, we gave agreed that slack messages and updates will be provided as work is being done. 

* Sharing and collaboration are some of the more important aspects of getting this project done, in addition to our Github Repository, we have a created a shared google drive. We believed that the google drive was a quicker way to share our resources and files as we progress through the prject 

* We have agreed to at least two meeting times per week, with additional meetings being scheduled on a weekly basis determined by necessity and amount of work needed to be completed. It is likely this will be needed each week. Our group slack channel has been active on a daily basis with news and updates. 

## Data Sources

We will be utilizing a few different data sets for this project. Some will be put through the entire ETL process, while some will only be utilized for machine learning.

Dataset #1 [U.S. Bureau of Labor Statistics](https://www.bls.gov/opub/mlr/2022/article/the-great-resignation-in-perspective.htm)

Dataset #2 [All Employees-Manufacturing | FRED](https://fred.stlouisfed.org/series/MANEMP)

Dataset #3 [Bureau of Economic Analysis -Table 1 | BEA](https://apps.bea.gov/iTable/?reqid=70&step=1&acrdn=6#eyJhcHBpZCI6NzAsInN0ZXBzIjpbMSwyNCwyOSwyNSwzMSwyNiwyNywzMCwzMF0sImRhdGEiOltbIlRhYmxlSWQiLCIzMyJdLFsiQ2xhc3NpZmljYXRpb24iLCJOQUlDUyJdLFsiTWFqb3JfQXJlYSIsIjEwIl0sWyJTdGF0ZSIsWyIxMCJdXSxbIkFyZWEiLFsiWFgiXV0sWyJTdGF0aXN0aWMiLCItMSJdLFsiVW5pdF9vZl9tZWFzdXJlIiwiTGV2ZWxzIl0sWyJZZWFyIixbIjIwMjAiLCIyMDE5IiwiMjAxOCIsIjIwMTciLCIyMDE2IiwiMjAxNSIsIjIwMTQiXV0sWyJZZWFyQmVnaW4iLCItMSJdLFsiWWVhcl9FbmQiLCItMSJdXX0=)

Dataset #4  [Bureau of Economic Analysis -Table 2 | BEA](https://apps.bea.gov/iTable/?reqid=70&step=1&acrdn=8#eyJhcHBpZCI6NzAsInN0ZXBzIjpbMSwyNCwyOSwyNSwzMSwyNiwyNywzMCwzMF0sImRhdGEiOltbIlRhYmxlSWQiLCI1MjYiXSxbIkNsYXNzaWZpY2F0aW9uIiwiTkFJQ1MiXSxbIk1ham9yX0FyZWEiLCIwIl0sWyJTdGF0ZSIsWyIwIl1dLFsiQXJlYSIsWyJYWCJdXSxbIlN0YXRpc3RpYyIsIi0xIl0sWyJVbml0X29mX21lYXN1cmUiLCJMZXZlbHMiXSxbIlllYXIiLFsiMjAyMCIsIjIwMTkiLCIyMDE4IiwiMjAxNyJdXSxbIlllYXJCZWdpbiIsIi0xIl0sWyJZZWFyX0VuZCIsIi0xIl1dfQ==)

## Questions we Hope to Answer

After analyzing our data and creating various visualizations, we hope to discover a correlation between geographic regions, contributing factors such as rate of pay, work commute, and education with rates of resignation among vertain industries. We hope to predict future economic trends using our machine learning model, and clearly display these trends using graphs and charts in Tableau and MatPlotLib.
