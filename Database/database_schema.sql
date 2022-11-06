-- creating geographic data table


create table geographic_data (
id int REFERENCES industry (id),
geo_name CHAR(50) not null, 
description CHAR(300) not null,
"2016" INT not null,
"2017" INT not null,
"2018" INT not null,
"2019" INT not null,
"2020" INT not null

);

--- creating industry table


create table industry (
id INT PRIMARY KEY not null,
description CHAR(300)
);


-- checking tables
select * from industry;
select * from geographic_data;



-- query to display the sum of the industry description in relation to the ID. counting the number of jobs by industry, in descending order
select i.id, gd.description, sum(gd.id)
from geographic_data as gd 
join industry as i on i.id = gd.id
group by gd.description,i.id
order by sum(gd.id) desc;