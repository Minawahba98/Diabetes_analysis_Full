-- /////////////////////////////////////////////////////////// Table Creation & Schema Definition /////////////////////////////////////////
-- Tbale Create :

Create table Diabetes (
id INT ,
No_Pation INT ,
Gender varchar(16) , 
AGE INT , 
Urea FLOAT , 
Cr FLOAT , 
HbA1c Float ,
Chol float ,
TG float , 
HDL Float , 
LDL float , 
VLDL float ,
BMI Float ,
CLASS varchar(5) 
) ;


-- Exploring :

select * from Diabetes

select count(*) from Diabetes

select count(id) from Diabetes

-- Cleaning Data /// Nul Vlaues //// 
select id from Diabetes
where id is null 

-- /////////////// Find Unique Values in Categorical Columns/////

Select Distinct count(id) from Diabetes ADD


Select Distinct gender from Diabetes 


-- Update the error in the table 
UPDATE Diabetes
SET gender = 'F'
WHERE gender = 'f';

--  Calculate Summary Statistics

Select gender , CEIL(AVG(urea)), CEil(avg(Cr)) , CEIl(avg(hba1c)) , Round(avg(bmi) :: decimal , 2) , avg(hdl) from Diabetes
group by gender


-- max . min

Select gender , CEIL(max(urea)), CEil(max(Cr)) , CEIl(max(hba1c)) , Round(max(bmi) :: decimal , 2) , max(hdl) from Diabetes
group by gender


Select gender , CEIL(min(urea)), CEil(min(Cr)) , CEIl(min(hba1c)) , Round(min(bmi) :: decimal , 2) , min(hdl) from Diabetes
group by gender




select class  , count(*) from diabetes
group by class


select GEnder  , count(*) from diabetes
group by gender


select gender ,  max(Chol) from diabetes
group by gender

select gender ,  max(TG) from diabetes
group by gender



select gender ,  max(Urea) from diabetes
group by gender


select gender ,  max(HbA1c) from diabetes
group by gender


-- per age select age , count(*) from diabetes
group by age 
having age <=  30

select age , count(*) from diabetes
group by age 
having age between  30 and 50


select age , count(*) from diabetes
group by age 
having age >= 50



select count(*) from diabetes 
where age <= 30

select count(*) from diabetes 
where age between 30 and 50 



select count(*) from diabetes 
where age >= 50






