



 -- Given a student’s last name, find the student’s grade, 
-- classroo
select students.grade,students.classroom from student.students where stlastname ="cookus";

-- Given a student’s last name, find the bus route the student takes

select students.bus from student.students where stlastname="cookus";


-- Find all students at a specified grade level
select students.grade,stfirstname from  student.students where grade =3;

 -- For each entry found, print the last name, first name, grade, classroom 
 select students.stlastname,stfirstname,grade,classroom from student.students;
 
 -- splay the total number of students for each bus routes
 select students.bus, count(students.bus) from student.students group by students.bus;

--  Display the total number of students for each grades
select students.grade,count(students.Grade) from student.students group by students.grade;


-- Display all columns data of all the rows from the flights table ? 
use airlinesdb;

 select * from flights; 

select * from airlines;
 -- Display source and destination airport  from flights table ?
 select flights.sourceairport,flights.destairport from flights;
 
-- Select all flights whose airline number is 3 or 5 from flights table ?
select airline,flights.flightno from flights where airline= 3 or airline = 5 group by flightno; 

 
- -- Display  all airline code  from flights table ? 
select distinct(flights.airline) from flights ; 
 
 
  -- Select all flights whose airline number is 3 from flights table ?
  

select airline,flights.flightno from flights where airline= 3 ;

create database bakerydb;
use  bakerydb;
select * from  bakerydb.goods;
-- Display count of every Food from goods table ?
select food ,count(bakerydb.goods.food) from bakerydb.goods group by food;

-- q 16  Display the total price of Each Flavour ?

select goods.flavor ,goods.price from bakerydb.goods ;
   
   
create database AIRLINESdb ;

create database carsdb;

create database csudb;

create database inndb;

create database student2db;

create database winedb;

use airlinesdb;


-- 1. 
-- Find all airlines that have at least one flight out of AXX airport.


SELECT airlinesdb.airlines.airline FROM airlinesdb.airlines ,airlinesdb.flights WHERE  airlinesdb.airlines.id =airlinesdb.flights.airline AND sourceairport="AXX";





-- 2. 
-- Find all destinations served from the AXX airport by Northwest. 
SELECT airlinesdb.flights.DestAirport,airlinesdb.flights.SourceAirport FROM airlinesdb.airlines ,airlinesdb.flights
 WHERE airlinesdb.airlines.Id=airlinesdb.flights.Airline AND airlinesdb.airlines.Abbreviation="northwest" AND airlinesdb.flights.SourceAirport="AXX";





-- 3. 
-- Find all other destinations that are accessible from AHT
SELECT airlinesdb.flights.DestAirport,airlinesdb.flights.SourceAirport FROM airlinesdb.airlines,airlinesdb.flights
 WHERE airlinesdb.airlines.Id=airlinesdb.flights.Airline AND airlinesdb.flights.SourceAirport="AHT";
 
 
 
 

-- 4. 
-- Report all pairs of flightNo served by both Frontier and Jetblue 
select airlinesdb.flights.FlightNo,airlinesdb.airlines.Abbreviation from airlinesdb.airlines,airlinesdb.flights
 where airlinesdb.airlines.Id=airlinesdb.flights.Airline AND airlinesdb.airlines.Abbreviation="JETBLUE" OR airlinesdb.airlines.Abbreviation="FRONTIER";
 
 
 


-- 5. 
-- Find ALL five of the airlines listed below: Delta,
-- Frontier, USAir, UAL and Southwest.
select airlinesdb.airlines.Abbreviation,
airlinesdb.airlines.Airline,
airlinesdb.flights.FlightNo 
FROM airlinesdb.airlines,airlinesdb.flights
where airlines.Id=flights.Airline and airlines.Abbreviation="DELTA" or airlinesdb.airlines.Abbreviation="FRONTIER"
or airlinesdb.airlines.Abbreviation="USAIR" or airlinesdb.airlines.Abbreviation="UAL" 
or airlinesdb.airlines.Abbreviation="SOUTHWEST";
 
 
 




