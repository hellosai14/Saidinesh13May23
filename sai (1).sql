-- SQL ASSIGNMENT 2-INEURON

-- Q51.Write an SQL query to report the name, population, and area of the big countries

CREATE TABLE World (
    name VARCHAR(255),
    continent VARCHAR(255),
    area INT,
    population INT,
    gdp BIGINT
);

INSERT INTO World (name, continent, area, population, gdp)
VALUES
    ('Afghanistan', 'Asia', 652230, 25500100, 20343000000),
    ('Albania', 'Europe', 28748, 2831741, 12960000000),
    ('Algeria', 'Africa', 2381741, 37100000, 188681000000),
    ('Andorra', 'Europe', 468, 78115, 3712000000),
    ('Angola', 'Africa', 1246700, 20609294, 100990000000);
    
SELECT * FROM world WHERE area >= 3000000 or population >=25000000 order by area desc;










/* Q52.Write an SQL query to report the names of the customer that are not referred by the customer with 
id = 2. */

create table customer_table
(id int, name varchar(255), referee_id varchar(255) );

INSERT INTO customer_table (id, name, referee_id)
VALUES (1, 'Will', NULL),
       (2, 'Jane', NULL),
       (3, 'Alex', 2),
       (4, 'Bill', NULL),
       (5, 'Zack', 1),
       (6, 'Mark', 2);
       
select * from customer_table where referee_id!=2 or referee_id is Null;











-- Q53. Write an SQL query to report all customers who never order anything 

create table customers (
id int primary key , 
name varchar (255) 
);


CREATE TABLE Orders (
    id INT PRIMARY KEY,
    customerId INT,
    FOREIGN KEY (customerId) REFERENCES customers(id)
);


INSERT INTO Customers (id, name)
VALUES
    (1, 'Joe'),
    (2, 'Henry'),
    (3, 'Sam'),
    (4, 'Max');
    

INSERT INTO Orders (id, customerId)
VALUES
    (1, 3),
    (2, 1);
    
select c.name from Customers c
left join
Orders o
on c.id = o.customerID
where o.id is NULL;













-- Q.54 Write an SQL query to find the team size of each of the employees


CREATE TABLE Employee (
    employee_id INT primary key,
    team_id INT
);
INSERT INTO Employee (employee_id, team_id)
VALUES
    (1, 8),
    (2, 8),
    (3, 8),
    (4, 7),
    (5, 9),
    (6, 9);
    
SELECT employee_id, COUNT(team_id) OVER (PARTITION BY team_id) AS team_size
FROM Employee
ORDER BY employee_id;













/*Q55. A telecommunications company wants to invest in new countries. The company intends to invest in
the countries where the average call duration of the calls in this country is strictly greater than the
global average call duration.
Write an SQL query to find the countries where this company can invest  */



CREATE TABLE Person (
    Id INT PRIMARY KEY,
    Name VARCHAR(255),
    phone_number VARCHAR(15) 
);

CREATE TABLE Country (
    country_code VARCHAR(3) PRIMARY KEY,
    Name VARCHAR(255)
);

CREATE TABLE Calls (
    caller_id INT,
    callee_id INT,
    Duration INT
);


INSERT INTO Person (Id, Name, phone_number)
VALUES
    (3, 'Jonathan', '051-1234567'),
    (12, 'Elvis', '051-7654321'),
    (1, 'Moncef', '212-1234567'),
    (2, 'Maroua', '212-6523651'),
    (7, 'Meir', '972-1234567'),
    (9, 'Rachel', '972-0011100');
    

INSERT INTO Country (Name, country_code)
VALUES
    ('Peru', '51'),
    ('Israel', '972'),
    ('Morocco', '212'),
    ('Germany', '49'),
    ('Ethiopia', '251');

    

INSERT INTO Calls (caller_id, callee_id, Duration)
VALUES
    (1, 9, 33),
    (2, 9, 4),
    (1, 2, 59),
    (3, 12, 102),
    (3, 12, 330),
    (12, 3, 5),
    (7, 9, 13),
    (7, 1, 3),
    (9, 7, 1),
    (1, 7, 7); 
    
SELECT t3.Name
FROM (
    SELECT t2.Name,
           AVG(t1.duration) OVER (PARTITION BY t2.Name) AS avg_call_duration,
           AVG(t1.duration) OVER () AS global_average
    FROM (
        (SELECT cl.caller_id AS id, cl.duration FROM Calls cl)
        UNION
        (SELECT cl.callee_id AS id, cl.duration FROM Calls cl)
    ) t1
    LEFT JOIN (
        SELECT p.id, c.Name
        FROM Person p
        LEFT JOIN Country c ON CONVERT(LEFT(p.phone_number, 3), UNSIGNED INTEGER) = CONVERT(c.country_code, UNSIGNED INTEGER)
    ) t2 ON t1.id = t2.id
) t3
WHERE t3.avg_call_duration > t3.global_average
GROUP BY t3.Name;   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
-- Q.56 Write an SQL query to report the device that is first logged in for each player.

       
    CREATE TABLE Activity (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT
);  
  
INSERT INTO Activity (player_id, device_id, event_date, games_played)
VALUES
    (1, 2, '2016-03-01', 5),
    (1, 2, '2016-05-02', 6),
    (2, 3, '2017-06-25', 1),
    (3, 1, '2016-03-02', 0),
    (3, 4, '2018-07-03', 5);
    

SELECT a.player_id, a.device_id AS first_logged_in_device
FROM Activity a
JOIN (
    SELECT player_id, MIN(event_date) AS first_login_date
    FROM Activity
    GROUP BY player_id
) AS subquery
ON a.player_id = subquery.player_id AND a.event_date = subquery.first_login_date;











-- Q.57 Write an SQL query to find the customer_number for the customer who has placed the largest number of orders.


   
    CREATE TABLE Orders1 (
    order_number INT PRIMARY KEY,
    customer_number INT
);

INSERT INTO Orders1 (order_number, customer_number)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 3);
    

SELECT customer_number
FROM Orders1
GROUP BY customer_number
order by count(order_number) desc
limit 1;











-- Q.58 Write an SQL query to report all the consecutive available seats in the cinema.
-- Return the result table ordered by seat_id in ascending order




CREATE TABLE Cinema (
    seat_id INT AUTO_INCREMENT PRIMARY KEY,
    Free BOOL
);

INSERT INTO Cinema (seat_id, Free) VALUES
(1, 1),
(2, 0),
(3, 1),
(4, 1),
(5, 1);


select t.seat_id
from
(select seat_id, lead(seat_id,1,seat_id) over(order by seat_id) as next
from Cinema
where Free != 0
) t
where next - seat_id in (0,1)
order by seat_id;











/* Q.59 Write an SQL query to report the names of all the salespersons who did not have any orders related to
the company with the name "RED"*/

-- Create the Company table
CREATE TABLE Company (
    com_id INT PRIMARY KEY,
    Name VARCHAR(255),
    City VARCHAR(255)
);

-- Create the SalesPerson table
CREATE TABLE SalesPerson (
    sales_id INT PRIMARY KEY,
    Name VARCHAR(255),
    Salary INT,
    commission_rate INT,
    hire_date DATE
);

-- Create the Orders table
CREATE TABLE Orders2 (
    order_id INT PRIMARY KEY,
    order_date DATE,
    com_id INT,
    sales_id INT,
    Amount INT,
    FOREIGN KEY (com_id) REFERENCES Company (com_id),
    FOREIGN KEY (sales_id) REFERENCES SalesPerson (sales_id)
);



-- Insert data into the SalesPerson table
INSERT INTO SalesPerson (sales_id, Name, Salary, commission_rate, hire_date)
VALUES
    (1, 'John', 100000, 6, '2006-04-01'),
    (2, 'Amy', 12000, 5, '2010-05-01'),
    (3, 'Mark', 65000, 12, '2008-12-25'),
    (4, 'Pam', 25000, 25, '2005-01-01'),
    (5, 'Alex', 5000, 10, '2007-02-03');

-- Insert data into the Company table
INSERT INTO Company (com_id, Name, City)
VALUES
    (1, 'RED', 'Boston'),
    (2, 'ORANGE', 'New York'),
    (3, 'YELLOW', 'Boston'),
    (4, 'GREEN', 'Austin');

-- Insert data into the Orders table
INSERT INTO Orders2 (order_id, order_date, com_id, sales_id, Amount)
VALUES
    (1, '2014-01-01', 3, 4, 10000),
    (2, '2014-02-01', 4, 5, 5000),
    (3, '2014-03-01', 1, 1, 50000),
    (4, '2014-04-01', 1, 4, 25000);

    
select Name from SalesPerson
where sales_id 
not in
(select o.sales_id 
from
Orders2 o 
left join
Company c 
on o.com_id = c.com_id 
where c.Name = 'Red');










-- Q.60 Write an SQL query to report for every three line segments whether they can form a triangle


CREATE TABLE Triangle (
    X INT,
    Y INT,
    Z INT
);

-- Insert the first row
INSERT INTO Triangle (X, Y, Z) VALUES 
(13, 15, 30),
(10, 20, 15);

select X, Y, Z, (case
when X+Y > Z and Y+Z > X and Z+X > Y then 'Yes'
else 'No'
end) as triangle
from Triangle;











-- Q.61 Write an SQL query to report the shortest distance between any two points from the Point table

create table point (X int);

insert into point (X) values (-1),(0),(2);

select min(t.diff) as shortest
from
(select lead(X,1) over(order by X) - X as diff
from
Point) t;

















/* Q. 62. Write a SQL query for a report that provides the pairs (actor_id, director_id) where the actor has
cooperated with the director at least three times*/


CREATE TABLE ActorDirector (
    actor_id INT,
    director_id INT,
    timestamp INT
);



INSERT INTO ActorDirector (actor_id, director_id, timestamp) VALUES
(1, 1, 0),
(1, 1, 1),
(1, 1, 2),
(1, 2, 3),
(1, 2, 4),
(2, 1, 5),
(2, 1, 6);

select actor_id, director_id
from
ActorDirector
group by actor_id, director_id
having count(*) >= 3;













/* Q.63 Write an SQL query that reports the product_name, year, and price for each sale_id in the Sales table.
Return the resulting table in any order. */

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255)
);


CREATE TABLE Sales1 (
    sale_id INT,
    product_id INT,
    year INT,
    quantity INT,
    price INT,
    PRIMARY KEY (sale_id, year),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);


-- Insert the data into the Product table
INSERT INTO Product (product_id, product_name) VALUES
(100, 'Nokia'),
(200, 'Apple'),
(300, 'Samsung');



-- Insert the data into the Sales table
INSERT INTO Sales1 (sale_id, product_id, year, quantity, price) VALUES
(1, 100, 2008, 10, 5000),
(2, 100, 2009, 12, 5000),
(7, 200, 2011, 15, 9000);


select p.product_name, s.year, 
sum(price) as price
from
Sales1 s
left join
Product p
on s.product_id = p.product_id
group by p.product_name, s.year;












-- 64.Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits

-- Create the Employee table
CREATE TABLE Employee4 (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255),
    experience_years INT
);

-- Insert data into the Employee table
INSERT INTO Employee4 (employee_id, name, experience_years) VALUES
(1, 'Khaled', 3),
(2, 'Ali', 2),
(3, 'John', 1),
(4, 'Doe', 2);

-- Create the Project table
CREATE TABLE Project2 (
    project_id INT,
    employee_id INT,
    PRIMARY KEY (project_id, employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- Insert data into the Project table
INSERT INTO Project2 (project_id, employee_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4);


select p.project_id, round(avg(e.experience_years),2) as average_years
from
Project2 p
left join
Employee4 e
on p.employee_id = e.employee_id
group by p.project_id;











/* Q.65  Write an SQL query that reports the best seller by total sales price, If there is a tie, report them all.
Return the result table in any order. */



-- Create the Employee table
CREATE TABLE Employee1 (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255),
    experience_years INT
);

-- Create the Project table
CREATE TABLE Project (
    project_id INT,
    employee_id INT,
    PRIMARY KEY (project_id, employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- Insert data into the Employee table
INSERT INTO Employee1 (employee_id, name, experience_years) VALUES
(1, 'Khaled', 3),
(2, 'Ali', 2),
(3, 'John', 1),
(4, 'Doe', 2);


-- Insert data into the Project table
INSERT INTO Project (project_id, employee_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4);


select p.project_id, round(avg(e.experience_years),2) as average_years
from
Project p
left join
Employee1 e
on p.employee_id = e.employee_id
group by p.project_id;














/* Q.66 Write an SQL query that reports the buyers who have bought S8 but not iPhone. Note that S8 and
iPhone are products present in the Product table.*/





CREATE TABLE Product1 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    unit_price INT
);

CREATE TABLE Sales2 (
    seller_id INT,
    product_id INT,
    buyer_id INT,
    sale_date DATE,
    quantity INT,
    price INT
);


-- Insert data into the Product table
INSERT INTO Product1 (product_id, product_name, unit_price) VALUES
(1, 'S8', 1000),
(2, 'G4', 800),
(3, 'iPhone', 1400);


-- Insert data into the Sales table
INSERT INTO Sales2 (seller_id, product_id, buyer_id, sale_date, quantity, price) VALUES
(1, 1, 1, '2019-01-21', 2, 2000),
(1, 2, 2, '2019-02-17', 1, 800),
(2, 2, 3, '2019-06-02', 1, 800),
(3, 3, 4, '2019-05-13', 2, 2800);




select buyer_id 
from
(
select t1.buyer_id,
sum(case when t1.product_name = 'S8' then 1 else 0 end) as S8_count,
sum(case when t1.product_name = 'iPhone' then 1 else 0 end) as iphone_count
from
(
select s.buyer_id, p.product_name
from
Sales2 s
left join
Product1 p
on s.product_id = p.product_id
) t1
group by t1.buyer_id
) t2
where t2.S8_count = 1 and t2.iphone_count = 0;






/* Q.67 Write an SQL query to compute the moving average of how much the customer paid in a seven days
window (i.e., current day + 6 days before). average_amount should be rounded to two decimal places.*/

CREATE TABLE Customers2 (
    customer_id INT,
    Name VARCHAR(255),
    visited_on DATE,
    Amount INT,
    PRIMARY KEY (customer_id, visited_on)
);


-- Insert data into the Customer table
INSERT INTO Customers2 (customer_id, Name, visited_on, Amount) VALUES
(1, 'Jhon', '2019-01-01', 100),
(2, 'Daniel', '2019-01-02', 110),
(3, 'Jade', '2019-01-03', 120),
(4, 'Khaled', '2019-01-04', 130),
(5, 'Winston', '2019-01-05', 110),
(6, 'Elvis', '2019-01-06', 140),
(7, 'Anna', '2019-01-07', 150),
(8, 'Maria', '2019-01-08', 80),
(9, 'Jaze', '2019-01-09', 110),
(1, 'Jhon', '2019-01-10', 130),
(3, 'Jade', '2019-01-10', 150);



select t2.visited_on, t2.amount, t2.average_amount 
from
(select t1.visited_on, t1.prev_date_interval_6, 
round(sum(amount) over(order by visited_on range between interval '6' day
preceding and current row),2) as amount,
round(avg(amount) over(order by visited_on range between interval '6' day
preceding and current row),2) as average_amount
from
(select visited_on, sum(amount) as amount, 
lag(visited_on,6) over(order by visited_on) as prev_date_interval_6
from Customers2
group by visited_on
order by visited_on) t1
) t2
where prev_date_interval_6 is not null;




-- Q.68 Write an SQL query to find the total score for each gender on each day.
-- Return the result table ordered by gender and day in ascending order.

CREATE TABLE Scores (
    player_name VARCHAR(255),
    gender VARCHAR(10),
    day DATE,
    score_points INT,
    PRIMARY KEY (gender, day)
);

-- Insert data into the Scores table
INSERT INTO Scores (player_name, gender, Day, score_points) VALUES
('Aron', 'F', '2020-01-01', 17),
('Alice', 'F', '2020-01-07', 23),
('Bajrang', 'M', '2020-01-07', 7),
('Khali', 'M', '2019-12-25', 11),
('Slaman', 'M', '2019-12-30', 13),
('Joe', 'M', '2019-12-31', 3),
('Jose', 'M', '2019-12-18', 2),
('Priya', 'F', '2019-12-31', 23),
('Priyanka', 'F', '2019-12-30', 17);


select gender, day, 
sum(score_points) over(partition by gender order by day) as total
from Scores
group by gender, day
order by gender, day;








-- Q.69 Write an SQL query to find the start and end number of continuous ranges in the table Logs.
-- Return the result table ordered by start_id


CREATE TABLE Logs (
    log_id INT PRIMARY KEY
);

-- Insert data into the Logs table
INSERT INTO Logs (log_id) VALUES
(1),
(2),
(3),
(7),
(8),
(10);

select distinct start.log_id as start_id, 
min(end.log_id) over(partition by start.log_id) as end_id
from
(select log_id from Logs where log_id - 1 not in (select * from Logs)) start,
(select log_id from Logs where log_id + 1 not in (select * from Logs)) end
where start.log_id <= end.log_id;



-- Q.70 Write an SQL query to find the number of times each student attended each exam.

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255)
);

CREATE TABLE Subjects (
    subject_name VARCHAR(255) PRIMARY KEY
);

CREATE TABLE Examinations (
    student_id INT,
    subject_name VARCHAR(255),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_name) REFERENCES Subjects(subject_name)
);

-- Insert data into the Students table
INSERT INTO Students (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(13, 'John'),
(6, 'Alex');


-- Insert data into the Subjects table
INSERT INTO Subjects (subject_name) VALUES
('Math'),
('Physics'),
('Programming');


-- Insert data into the Examinations table
INSERT INTO Examinations (student_id, subject_name) VALUES
(1, 'Math'),
(1, 'Physics'),
(1, 'Programming'),
(2, 'Programming'),
(1, 'Physics'),
(1, 'Math'),
(13, 'Math'),
(13, 'Programming'),
(13, 'Physics'),
(2, 'Math'),
(1, 'Math');

select t.student_id, t.student_name , t.subject_name, 
count(e.subject_name) as attended_exams
from
(select student_id, student_name, subject_name
from Students, Subjects) t
left join
Examinations e
on t.student_id = e.student_id and t.subject_name = e.subject_name
group by t.student_id, t.subject_name
order by t.student_id, t.subject_name;




-- 71 Write an SQL query to find employee_id of all employees that directly or indirectly report their work to
-- the head of the company.


CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(255),
    manager_id INT
);


-- Insert data into the Employees table
INSERT INTO Employees (employee_id, employee_name, manager_id) VALUES
(1, 'Boss', 1),
(3, 'Alice', 3),
(2, 'Bob', 1),
(4, 'Daniel', 2),
(7, 'Luis', 4),
(8, 'John', 3),
(9, 'Angela', 8),
(77, 'Robert', 1);


with recursive new as
(
select employee_id from Employees where employee_id = 1
union
select e2.employee_id from new e1
inner join
Employees e2
on e1.employee_id = e2.manager_id
)
select * from new where employee_id <> 1;


 
 
 
 -- Q72. Write an SQL query to find for each month and country, the number of transactions and their total
-- amount, the number of approved transactions and their total amount.
 
 
 CREATE TABLE Transactions (
    Id INT PRIMARY KEY,
    Country VARCHAR(255),
    State ENUM('approved', 'declined'),
    Amount INT,
    trans_date DATE
);

-- Insert data into the Transactions table
INSERT INTO Transactions (Id, Country, State, Amount, trans_date) VALUES
(121, 'US', 'approved', 1000, '2018-12-18'),
(122, 'US', 'declined', 2000, '2018-12-19'),
(123, 'US', 'approved', 2000, '2019-01-01'),
(124, 'DE', 'approved', 2000, '2019-01-07');

select month(trans_date) as Month,
Country, count(Id) as trans_count, 
sum(case when State = 'approved' then 1 else 0 end) as approved_count,
sum(amount) as trans_total_amount, 
sum(case when State = 'approved' then amount else 0 end) as
approved_total_amount
from Transactions
group by Month, Country;




-- 73. Write an SQL query to find the average daily percentage of posts that got removed after being reported
-- as spam, rounded to 2 decimal places

CREATE TABLE Actions (
    user_id INT,
    post_id INT,
    action_date DATE,
    action ENUM('view', 'like', 'reaction', 'comment', 'report', 'share'),
    extra VARCHAR(255)
);

CREATE TABLE Removals (
    post_id INT PRIMARY KEY,
    remove_date DATE
);


-- Inserting data into the Actions table
INSERT INTO Actions (user_id, post_id, action_date, action, extra)
VALUES
    (1, 1, '2019-07-01', 'view', NULL),
    (1, 1, '2019-07-01', 'like', NULL),
    (1, 1, '2019-07-01', 'share', NULL),
    (2, 2, '2019-07-04', 'view', NULL),
    (2, 2, '2019-07-04', 'report', 'spam'),
    (3, 4, '2019-07-04', 'view', NULL),
    (3, 4, '2019-07-04', 'report', 'spam'),
    (4, 3, '2019-07-02', 'view', NULL),
    (4, 3, '2019-07-02', 'report', 'spam'),
    (5, 2, '2019-07-03', 'view', NULL),
    (5, 2, '2019-07-03', 'report', 'racism'),
    (5, 5, '2019-07-03', 'view', NULL),
    (5, 5, '2019-07-03', 'report', 'racism');

-- Inserting data into the Removals table
INSERT INTO Removals (post_id, remove_date)
VALUES
    (2, '2019-07-20'),
    (3, '2019-07-18');
    
select round(avg(t.daily_percent), 2) as average_daily_percent
from
(
select
sum(case when remove_date > action_date then 1 else 0 end)/
count(tmp.action_date)*100 as daily_percent 
from
(
select post_id, action_date, extra
from Actions where extra = 'spam') tmp
left join Removals r
on tmp.post_id = r.post_id
group by action_date
) t;












/* 74. Write an SQL query to report the fraction of players that logged in again on the day after the day they
first logged in, rounded to 2 decimal places. In other words, you need to count the number of players
that logged in for at least two consecutive days starting from their first login date, then divide that
number by the total number of players.*/

CREATE TABLE activity_table (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT,
    fraction FLOAT(2,2), 
    PRIMARY KEY (player_id, event_date)
);

-- Inserting data into the activity_table
INSERT INTO activity_table (player_id, device_id, event_date, games_played, fraction)
VALUES
    (1, 2, '2016-03-01', 5, 0.33),
    (1, 2, '2016-03-02', 6, 0.33),
    (2, 3, '2017-06-25', 1, 0.33),
    (3, 1, '2016-03-02', 0, 0.33),
    (3, 4, '2018-07-03', 5, 0.33);


select round(t.player_id/(select count(distinct player_id) from activity),2) as
fraction
from
(
select distinct player_id,
datediff(event_date, lead(event_date, 1) over(partition by player_id order by
event_date)) as diff
from activity_table ) t
where diff = -1;












/* 75. Write an SQL query to report the fraction of players that logged in again on the day after the day they
first logged in, rounded to 2 decimal places. In other words, you need to count the number of players
that logged in for at least two consecutive days starting from their first login date, then divide that
number by the total number of players. */

CREATE TABLE activity_table (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT,
    fraction FLOAT(2,2), 
    PRIMARY KEY (player_id, event_date)
);

-- Inserting data into the activity_table
INSERT INTO activity_table (player_id, device_id, event_date, games_played, fraction)
VALUES
    (1, 2, '2016-03-01', 5, 0.33),
    (1, 2, '2016-03-02', 6, 0.33),
    (2, 3, '2017-06-25', 1, 0.33),
    (3, 1, '2016-03-02', 0, 0.33),
    (3, 4, '2018-07-03', 5, 0.33);


select round(t.player_id/(select count(distinct player_id) from activity),2) as
fraction
from
(
select distinct player_id,
datediff(event_date, lead(event_date, 1) over(partition by player_id order by
event_date)) as diff
from activity_table ) t
where diff = -1;














/* 76. Write an SQL query to find the salaries of the employees after applying taxes. Round the salary to the
nearest integer.*/

CREATE TABLE Salaries (
    company_id INT,
    employee_id INT,
    employee_name VARCHAR(255),
    salary INT,
    PRIMARY KEY (company_id, employee_id));


-- Inserting data into the Salaries table
INSERT INTO Salaries (company_id, employee_id, employee_name, salary)
VALUES
    (1, 1, 'Tony', 2000),
    (1, 2, 'Pronub', 21300),
    (1, 3, 'Tyrrox', 10800),
    (2, 1, 'Pam', 300),
    (2, 7, 'Bassem', 450),
    (2, 9, 'Hermione', 700),
    (3, 7, 'Bocaben', 100),
    (3, 2, 'Ognjen', 2200),
    (3, 13, 'Nyan Cat', 3300),
    (3, 15, 'Morning Cat', 7777);

select company_id, employee_id, employee_name,
(case when max(salary) over(partition by company_id) < 1000 then salary
when max(salary) over(partition by company_id) < 10000 then
round(0.76*salary)
else round(0.51*salary)
end) as Salary
from Salaries;










-- 77. Write an SQL query to evaluate the boolean expressions in Expressions table

-- Create the Variables table
CREATE TABLE Variables (
    name VARCHAR(255) PRIMARY KEY,
    value INT
);

-- Create the Expressions table
CREATE TABLE Expressions (
    left_operand VARCHAR(255),
    operator ENUM('<', '>', '='),
    right_operand VARCHAR(255)    
);


-- Inserting data into the Variables table
INSERT INTO Variables (name, value)
VALUES
    ('x', 66),
    ('y', 77);


-- Inserting data into the Expressions table
INSERT INTO Expressions (left_operand, operator, right_operand)
VALUES
    ('x', '>', 'y'),
    ('x', '<', 'y'),
    ('x', '=', 'y'),
    ('y', '>', 'x'),
    ('y', '<', 'x'),
    ('x', '=', 'x');


select t.left_operand, t.operator, t.right_operand, (case
when t.value > v2.value and operator = '>' then "true"
when t.value < v2.value and operator = '<' then "true"
when t.value = v2.value and operator = '=' then "true"
else "false"
end) as value
from(select e.*, v1.value
from
Expressions e
inner join
Variables v1
on e.left_operand = v1.name) t
inner join
Variables v2
on t.right_operand = v2.name;















-- 78. Write an SQL query to find the countries where this company can invest.


-- Create the Person table
CREATE TABLE Person1 (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    phone_number VARCHAR(12) -- Format: 'xxx-yyyyyyy'
);

-- Create the Country table
CREATE TABLE Country1 (
    country_code VARCHAR(3) PRIMARY KEY,
    name VARCHAR(255)
);

-- Create the Calls table
CREATE TABLE Calls1 (
    caller_id INT,
    callee_id INT,
    duration INT
);


-- Inserting data into the Person table
INSERT INTO Person1 (id, name, phone_number)
VALUES
    (3, 'Jonathan', '051-1234567'),
    (12, 'Elvis', '051-7654321'),
    (1, 'Moncef', '212-1234567'),
    (2, 'Maroua', '212-6523651'),
    (7, 'Meir', '972-1234567'),
    (9, 'Rachel', '972-0011100');


-- Inserting data into the Country table
INSERT INTO Country1 (name, country_code)
VALUES
    ('Peru', '51'),
    ('Israel', '972'),
    ('Morocco', '212'),
    ('Germany', '49'),
    ('Ethiopia', '251');

-- Inserting data into the Calls table
INSERT INTO Calls1 (caller_id, callee_id, duration)
VALUES
    (1, 9, 33),
    (2, 9, 4),
    (1, 2, 59),
    (3, 12, 102),
    (3, 12, 330),
    (12, 3, 5),
    (7, 9, 13);

SELECT distinct t3.Name
FROM (
    SELECT t2.Name,
           AVG(t1.duration) OVER (PARTITION BY t2.Name) AS avg_call_duration,
           AVG(t1.duration) OVER () AS global_average
    FROM (
        (SELECT cl.caller_id AS id, cl.duration FROM Calls1 cl)
        UNION
        (SELECT cl.callee_id AS id, cl.duration FROM Calls1 cl)
    ) t1
    LEFT JOIN (
        SELECT p.id, c.Name
        FROM Person1 p
        LEFT JOIN Country1 c ON CONVERT(LEFT(p.phone_number, 3), SIGNED) = CONVERT(c.country_code, SIGNED)
    ) t2 ON t1.id = t2.id
) t3
WHERE t3.avg_call_duration > t3.global_average;














-- 79. Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in
-- alphabetical order.

create table employee3 
(employee_id int,
name varchar(25),
months int,
salary int);

insert into employee3 (employee_id,name, months, salary) values 
(12228,'Rose',15,1968),
(33645,'Angela',1,3443),
(45692,'Frank',17,1608),
(56118,'Patrick',7,1345),
(59725,'Lisa',11,2330),
(74197,'Kimberly',16,4372),
(78454,'Bonnie',8,1771),
(86565,'Micheal',6,2017),
(98607,'Todd',5,3396),
(99989,'Joe',9,3573) ;

select name
from
Employee3
order by name;













-- 80. Write a query to obtain the year-on-year growth rate for the total spend of each product for each year.

CREATE TABLE user_transactions (
    transaction_id INT,
    product_id INT,
    spend DECIMAL(10, 2),
    transaction_date DATETIME
);


-- Inserting data into the user_transactions table
INSERT INTO user_transactions (transaction_id, product_id, spend, transaction_date)
VALUES
    (1341, 123424, 1500.60, '2019-12-31 12:00:00'),
    (1423, 123424, 1000.20, '2020-12-31 12:00:00'),
    (1623, 123424, 1246.44, '2021-12-31 12:00:00'),
    (1322, 123424, 2145.32, '2022-12-31 12:00:00');


select year, product_id, curr_year_spend, coalesce(prev_year_spend,'') as
prev_year_spend,
coalesce(round((curr_year_spend - prev_year_spend)/prev_year_spend *100,2),'') as
yoy_rate
from
(
select year(transaction_date) as year, product_id, spend as curr_year_spend, 
round(lag(spend,1) over(partition by product_id order by transaction_date),2) as
prev_year_spend
from user_transactions
) t;
















-- Q.81 Write a SQL query to find the number of prime and non-prime items that can be stored in the 500,000
-- square feet warehouse.


CREATE TABLE inventory (
    item_id INT,
    item_type VARCHAR(255),
    item_category VARCHAR(255),
    square_footage DECIMAL(10, 2)
);

-- Inserting data into the inventory table
INSERT INTO inventory (item_id, item_type, item_category, square_footage)
VALUES
    (1374, 'prime_eligible', 'mini refrigerator', 68.00),
    (4245, 'not_prime', 'standing lamp', 26.40),
    (2452, 'prime_eligible', 'television', 85.00),
    (3255, 'not_prime', 'side table', 22.60),
    (1672, 'prime_eligible', 'laptop', 8.50);


select item_type, (case
when item_type = 'prime_eligible' then floor(500000/sum(square_footage)) * 
count(item_type)
when item_type = 'not_prime' then floor((500000 -(select
floor(500000/sum(square_footage)) * sum(square_footage) from inventory where
item_type = 'prime_eligible'))/sum(square_footage)) * count(item_type)
end) as item_count
from inventory
group by item_type
order by count(item_type) desc;














-- 82.Write a query to obtain the active user retention in July 2022

CREATE TABLE user_actions (
    user_id INT,
    event_id INT,
    event_type VARCHAR(255),
    event_date DATETIME
);

-- Inserting data into the user_actions table
INSERT INTO user_actions (user_id, event_id, event_type, event_date)
VALUES
    (445, 7765, 'sign-in', '2022-05-31 12:00:00'),
    (742, 6458, 'sign-in', '2022-06-03 12:00:00'),
    (445, 3634, 'like', '2022-06-05 12:00:00'),
    (742, 1374, 'comment', '2022-06-05 12:00:00'),
    (648, 3124, 'like', '2022-06-18 12:00:00');

-- For July Month
select month(a.event_date) as month, count(distinct a.user_id) as
monthly_active_users
from
user_actions a
inner join
user_actions b
on concat(month(a.event_date),year(a.event_date)) = 
concat(1+month(b.event_date),year(b.event_date))
and a.user_id = b.user_id
where a.event_type in ('sign-in', 'like', 'comment')
and b.event_type in ('sign-in', 'like', 'comment')
and concat(month(a.event_date),'/',year(a.event_date)) = '7/2022'
and concat(1+month(b.event_date),'/',year(b.event_date)) = '7/2022'
group by month(a.event_date);

-- For June Month
select month(a.event_date) as month, count(distinct a.user_id) as
monthly_active_users
from
user_actions a
inner join
user_actions b
on concat(month(a.event_date),year(a.event_date)) = 
concat(1+month(b.event_date),year(b.event_date))
and a.user_id = b.user_id
where a.event_type in ('sign-in', 'like', 'comment')
and b.event_type in ('sign-in', 'like', 'comment')
and concat(month(a.event_date),'/',year(a.event_date)) = '6/2022'
and concat(1+month(b.event_date),'/',year(b.event_date)) = '6/2022'
group by month(a.event_date);















-- Q.83 Write a query to report the median of searches made by a user. Round the median to one decimal point.


CREATE TABLE search_frequency (
    searches INTEGER,
    num_users INTEGER
);

INSERT INTO search_frequency (searches, num_users)
VALUES
    (1, 2),
    (2, 2),
    (3, 3),
    (4, 1);

with recursive seq as
(
select searches, num_users, 1 as c from search_frequency
union
select searches, num_users, c+1 from seq where c < num_users
)
select round(avg(t.searches),1) as median from
(select searches,row_number() over(order by searches, c) as r1,
row_number() over(order by searches desc, c desc) as r2 from seq order by
searches) t
where t.r1 in (t.r2, t.r2 - 1, t.r2 + 1);















-- 84. Write a query to update the Facebook advertiser's status using the daily_pay table.

CREATE TABLE advertiser (
    user_id VARCHAR(255), -- You can adjust the length based on your needs
    status VARCHAR(255)
);

CREATE TABLE daily_pay (
    user_id VARCHAR(255), -- You can adjust the length based on your needs
    paid DECIMAL(10, 2) -- Adjust the precision and scale as needed
);

INSERT INTO advertiser (user_id, status)
VALUES
    ('bing', 'NEW'),
    ('yahoo', 'NEW'),
    ('alibaba', 'EXISTING');

INSERT INTO daily_pay (user_id, paid)
VALUES
    ('yahoo', 45.00),
    ('alibaba', 100.00),
    ('target', 13.00);
    
select distinct user_id, case
when status in ('NEW','EXISTING','CHURN','RESURRECT') and user_id not in (select
user_id from daily_pay) then 'CHURN'
when status in ('NEW','EXISTING','RESURRECT') and user_id in (select user_id from
daily_pay) then 'EXISTING'
when status = 'CHURN' and user_id in (select user_id from daily_pay) then
'RESURRECT'
end as new_status
from advertiser 
order by user_id;













 -- 85. Write a query that calculates the total time that the fleet of servers was running. The output should be in units of full days.   

CREATE TABLE server_utilization (
    server_id INTEGER,
    status_time TIMESTAMP,
    session_status VARCHAR(255) 
);


INSERT INTO server_utilization (server_id, status_time, session_status)
VALUES
    (1, '2022-08-02 10:00:00', 'Start'),
    (1, '2022-08-04 10:00:00', 'Stop'),
    (2, '2022-08-17 10:00:00', 'Start'),
    (2, '2022-08-24 10:00:00', 'Stop');


select sum(t.individual_uptime) as total_uptime_days
from
(
select case when session_status = 'stop'
then
timestampdiff(day, lag(status_time) over(partition by server_id order by
status_time), status_time) end as individual_uptime
from server_utilization
) t;














-- 86. Using the transactions table, identify any payments made at the same merchant with the same credit


CREATE TABLE transactions1 (
    transaction_id INTEGER,
    merchant_id INTEGER,
    credit_card_id INTEGER,
    amount INTEGER,
    transaction_timestamp DATETIME
);


INSERT INTO transactions1 (transaction_id, merchant_id, credit_card_id, amount, transaction_timestamp)
VALUES
    (1, 101, 1, 100, '2022-09-25 12:00:00'),
    (2, 101, 1, 100, '2022-09-25 12:08:00'),
    (3, 101, 1, 100, '2022-09-25 12:28:00'),
    (4, 102, 2, 300, '2022-09-25 12:00:00'),
    (6, 102, 2, 400, '2022-09-25 14:00:00');


select sum(case when (unix_timestamp(t.next_transaction) -
unix_timestamp(t.transaction_timestamp))/60 <= 10 then 1 else 0 end) as
payment_count
from
(select transaction_timestamp, 
lead(transaction_timestamp,1) over(partition by merchant_id, credit_card_id, 
Amount order by transaction_timestamp) as next_transaction
from transactions1)t;










-- 87.Write a query to find the bad experience rate in the first 14 days for new users who signed up in June 2022.

CREATE TABLE orders3 (
    order_id INTEGER,
    customer_id INTEGER,
    trip_id INTEGER,
    status VARCHAR(255), -- You can adjust the length based on your needs
    order_timestamp TIMESTAMP
);

INSERT INTO orders3 (order_id, customer_id, trip_id, status, order_timestamp)
VALUES
    (727424, 8472, 100463, 'completed successfully', '2022-06-05 09:12:00'),
    (242513, 2341, 100482, 'completed incorrectly', '2022-06-05 14:40:00'),
    (141367, 1314, 100362, 'completed incorrectly', '2022-06-07 15:03:00'),
    (582193, 5421, 100657, 'never received', '2022-07-07 15:22:00'),
    (253613, 1314, 100213, 'completed successfully', '2022-06-12 13:43:00');
    
    
    CREATE TABLE trips (
    dasher_id INTEGER,
    trip_id INTEGER,
    estimated_delivery_timestamp TIMESTAMP,
    actual_delivery_timestamp TIMESTAMP
);

    INSERT INTO trips (dasher_id, trip_id, estimated_delivery_timestamp, actual_delivery_timestamp)
VALUES
    (101, 100463, '2022-06-05 09:42:00', '2022-06-05 09:38:00'),
    (102, 100482, '2022-06-05 15:10:00', '2022-06-05 15:46:00'),
    (101, 100362, '2022-06-07 15:33:00', '2022-06-07 16:45:00'),
    (102, 100657, '2022-07-07 15:52:00', NULL),
    (103, 100213, '2022-06-12 14:13:00', '2022-06-12 14:10:00');

    
    CREATE TABLE customers3 (
    customer_id INTEGER,
    signup_timestamp TIMESTAMP
);

    
    INSERT INTO customers3 (customer_id, signup_timestamp)
VALUES
    (8472, '2022-05-30 00:00:00'),
    (2341, '2022-06-01 00:00:00'),
    (1314, '2022-06-03 00:00:00'),
    (1435, '2022-06-05 00:00:00'),
    (5421, '2022-06-07 00:00:00');

select round(avg(t1.bad_exp_pct_per_cust),2) as bad_exp_pct
from
(
select t.customer_id, 100*sum(case when o.status <> 'completed successfully'
then 1 else 0 end)/count(*) as bad_exp_pct_per_cust 
from
(
select customer_id, signup_timestamp from customers3 where
month(signup_timestamp) = 6
) t
inner join
orders3 o
on o.customer_id = t.customer_id
where timestampdiff(day, t.signup_timestamp, o.order_timestamp) <= 13
group by t.customer_id
) t1;










    
    
    
    -- q.88 Write an SQL query to find the total score for each gender on each day.
    
    
    
   CREATE TABLE Scores1 (
    player_name VARCHAR(255), -- Adjust the length as needed
    gender VARCHAR(255),      -- Adjust the length as needed
    day DATE,
    score_points INT,
    PRIMARY KEY (gender, day)
);
 
    INSERT INTO Scores1 (player_name, gender, Day, score_points)
VALUES
    ('Aron', 'F', '2020-01-01', 17),
    ('Alice', 'F', '2020-01-07', 23),
    ('Bajrang', 'M', '2020-01-07', 7),
    ('Khali', 'M', '2019-12-25', 11),
    ('Slaman', 'M', '2019-12-30', 13),
    ('Joe', 'M', '2019-12-31', 3),
    ('Jose', 'M', '2019-12-18', 2),
    ('Priya', 'F', '2019-12-31', 23),
    ('Priyanka', 'F', '2019-12-30', 17);

    
  select gender, day, 
sum(score_points) over(partition by gender order by day) as total
from Scores
group by gender, day
order by gender, day;  
    
    
    
    
    
    
    
    
    
    
    
    
  -- q.89  Write an SQL query to find the countries where this company can invest.
    
    
CREATE TABLE Person2 (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    phone_number VARCHAR(11) -- Assuming 'xxx-yyyyyyy' format
);

    
 CREATE TABLE Country2 (
    country_code VARCHAR(3) PRIMARY KEY,
    name VARCHAR(255)
);
      
    
 CREATE TABLE Calls2 (
    caller_id INT,
    callee_id INT,
    duration INT
);  
    

INSERT INTO Person2 (id, name, phone_number)
VALUES
    (3, 'Jonathan', '051-1234567'),
    (12, 'Elvis', '051-7654321'),
    (1, 'Moncef', '212-1234567'),
    (2, 'Maroua', '212-6523651'),
    (7, 'Meir', '972-1234567'),
    (9, 'Rachel', '972-0011100');

INSERT INTO Country2 (name, country_code)
VALUES
    ('Peru', '51'),
    ('Israel', '972'),
    ('Morocco', '212'),
    ('Germany', '49'),
    ('Ethiopia', '251');

INSERT INTO Calls2 (caller_id, callee_id, duration)
VALUES
    (1, 9, 33),
    (2, 9, 4),
    (1, 2, 59),
    (3, 12, 102),
    (3, 12, 330),
    (12, 3, 5),
    (7, 9, 13),
    (7, 1, 3),
    (9, 7, 1),
    (1, 7, 7);
   
SELECT t3.Name
FROM (
    SELECT t2.Name, AVG(t1.duration) OVER(PARTITION BY t2.Name) AS avg_call_duration,
           AVG(t1.duration) OVER() AS global_average
    FROM (
        (SELECT cl.caller_id AS id, cl.duration
        FROM Calls2 cl)
        UNION
        (SELECT cl.callee_id AS id, cl.duration
        FROM Calls2 cl)
    ) t1
    LEFT JOIN (
        SELECT p.id, c.Name, c.country_code
        FROM Person2 p
        LEFT JOIN Country c ON CAST(LEFT(p.phone_number, 3) AS SIGNED) = CAST(c.country_code AS SIGNED)
    ) t2 ON t1.id = t2.id
) t3
WHERE t3.avg_call_duration > t3.global_average
GROUP BY t3.Name;

    
    
    
    
    
    
    
    
    




-- 90. Write an SQL query to report the median of all the numbers in the database after decompressing the Numbers table. 



 CREATE TABLE Numbers (
    num INT PRIMARY KEY,
    frequency INT
);
   
INSERT INTO Numbers (num, frequency)
VALUES
    (0, 7),
    (1, 1),
    (2, 3),
    (3, 1);

with recursive seq as
(
select num, frequency, 1 as c from Numbers
union
select num, frequency, c+1 from seq where c < frequency
)
select round(avg(t.num)) as median 
from
(
select num,row_number() over(order by num, c) as r1,
row_number() over(order by num desc, c desc) as r2 from seq order by num
) t
where t.r1 in (t.r2, t.r2 - 1,t.r2 + 1);
















-- q.91 Write an SQL query to report the comparison result (higher/lower/same) of the 
-- average salary of employees in a department to the company's average salary.



CREATE TABLE Salary (
    id INT PRIMARY KEY,
    employee_id INT,
    amount INT,
    pay_date DATE,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);


CREATE TABLE Employee2 (
    employee_id INT PRIMARY KEY,
    department_id INT
);


INSERT INTO Salary (id, employee_id, amount, pay_date)
VALUES
    (1, 1, 9000, '2017-03-31'),
    (2, 2, 6000, '2017-03-31'),
    (3, 3, 10000, '2017-03-31'),
    (4, 1, 7000, '2017-02-28'),
    (5, 2, 6000, '2017-02-28'),
    (6, 3, 8000, '2017-02-28');

INSERT INTO Employee2 (employee_id, department_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 2);
    
    
select distinct concat(year(t.pay_date),'-',month(t.pay_date)) as pay_month,
t.department_id, 
case
when monthly_department_avg_salary > monthly_average_salary then 'higher'
when monthly_department_avg_salary < monthly_average_salary then 'lower'
else 'same'
end as Comparison 
from
(select s.pay_date, e.department_id, 
avg(s.amount) over(partition by month(s.pay_date), e.department_id) as
monthly_department_avg_salary, 
avg(s.amount) over(partition by month(s.pay_date)) as monthly_average_salary
from Salary s
left join
Employee2 e
on s.employee_id = e.employee_id) t
order by t.department_id;

















-- Q.92 Write an SQL query to report for each install date, the number of players that installed the game on that day, and the day one retention.


CREATE TABLE Activity1 (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT,
    PRIMARY KEY (player_id, event_date)
);


INSERT INTO Activity1 (player_id, device_id, event_date, games_played)
VALUES
    (1, 2, '2016-03-01', 5),
    (1, 2, '2016-03-02', 6),
    (2, 3, '2017-06-25', 1),
    (3, 1, '2016-03-01', 0),
    (3, 4, '2016-07-03', 5);


select t1.install_dt, count(player_id) as installs, 
round(count(t1.next_install)/count(t1.player_id),1) as Day1_retention
from
(
select t.player_id, t.install_dt, a.event_date as next_install
from
(
select player_id, min(event_date) as install_dt
from Activity1 
group by player_id
) t
left join
Activity1 a
on t. player_id = a.player_id and a.event_date = t.install_dt + 1
) t1
group by install_dt;
















-- Q.93 Write an SQL query to find the winner in each group.

-- Create the Players table
CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    group_id INT
);

-- Create the Matches table
CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    first_player INT,
    second_player INT,
    first_score INT,
    second_score INT,
    FOREIGN KEY (first_player) REFERENCES Players(player_id),
    FOREIGN KEY (second_player) REFERENCES Players(player_id)
);


-- Insert data into the Players table
INSERT INTO Players (player_id, group_id)
VALUES
    (15, 1),
    (25, 1),
    (30, 1),
    (45, 1),
    (10, 2),
    (35, 2),
    (50, 2),
    (20, 3),
    (40, 3);

-- Insert data into the Matches table
INSERT INTO Matches (match_id, first_player, second_player, first_score, second_score)
VALUES
    (1, 15, 45, 3, 0),
    (2, 30, 25, 1, 2),
    (3, 30, 15, 2, 0),
    (4, 40, 20, 5, 2),
    (5, 35, 50, 1, 1);


select t2.group_id, t2.player_id from
(
select t1.group_id, t1.player_id, 
dense_rank() over(partition by group_id order by score desc, player_id) as r
from
(
select p.*, case when p.player_id = m.first_player then m.first_score
when p.player_id = m.second_player then m.second_score
end as score
from
Players p, Matches m
where player_id in (first_player, second_player)
) t1
) t2
where r = 1; 













-- 94.Write an SQL query to report the students (student_id, student_name) being quiet in all exams. 


CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255)
);


CREATE TABLE Exam (
    exam_id INT,
    student_id INT,
    score INT,
    PRIMARY KEY (exam_id, student_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);



INSERT INTO Student (student_id, student_name) VALUES
(1, 'Daniel'),
(2, 'Jade'),
(3, 'Stella'),
(4, 'Jonathan'),
(5, 'Will');

-- Insert data into the Exam table
INSERT INTO Exam (exam_id, student_id, score) VALUES
(10, 1, 70),
(10, 2, 80),
(10, 3, 90),
(20, 1, 80),
(30, 1, 70),
(30, 3, 80),
(30, 4, 90),
(40, 1, 60),
(40, 2, 70),
(40, 4, 80);

select t.student_id, t.student_name from
(select s.student_name, s.student_id, count(e.student_id) over(partition by
student_name) as exams_given,
case when e.score > min(e.score) over(partition by e.exam_id) and e.score < 
max(e.score) over(partition by e.exam_id) then 1 else 0 end as quiet 
# 1 means student is quiet, 0 means student is not quiet
from Exam e
left join
Student s
on e.student_id = s.student_id)t
group by t.student_name, t.student_id, t.exams_given
having sum(t.quiet) = t.exams_given ;

















-- Q.95 Write an SQL query to report the students (student_id, student_name) being quiet in all exams.

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255)
);


CREATE TABLE Exam (
    exam_id INT,
    student_id INT,
    score INT,
    PRIMARY KEY (exam_id, student_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);



INSERT INTO Student (student_id, student_name) VALUES
(1, 'Daniel'),
(2, 'Jade'),
(3, 'Stella'),
(4, 'Jonathan'),
(5, 'Will');

-- Insert data into the Exam table
INSERT INTO Exam (exam_id, student_id, score) VALUES
(10, 1, 70),
(10, 2, 80),
(10, 3, 90),
(20, 1, 80),
(30, 1, 70),
(30, 3, 80),
(30, 4, 90),
(40, 1, 60),
(40, 2, 70),
(40, 4, 80);

select t.student_id, t.student_name from
(select s.student_name, s.student_id, count(e.student_id) over(partition by
student_name) as exams_given,
case when e.score > min(e.score) over(partition by e.exam_id) and e.score < 
max(e.score) over(partition by e.exam_id) then 1 else 0 end as quiet 
# 1 means student is quiet, 0 means student is not quiet
from Exam e
left join
Student s
on e.student_id = s.student_id)t
group by t.student_name, t.student_id, t.exams_given
having sum(t.quiet) = t.exams_given ;














-- 96.Write a query to output the user id, song id, and cumulative count of song plays as of 4 August 2022 sorted in descending order.



-- Create the songs_history table
CREATE TABLE songs_history (
    history_id INT PRIMARY KEY,
    user_id INT,
    song_id INT,
    song_plays INT
);

-- Create the songs_weekly table
CREATE TABLE songs_weekly (
    user_id INT,
    song_id INT,
    listen_time DATETIME
);



INSERT INTO songs_history (history_id, user_id, song_id, song_plays) VALUES
(10011, 777, 1238, 11),
(12452, 695, 4520, 1);


-- Insert data into the songs_weekly table
INSERT INTO songs_weekly (user_id, song_id, listen_time) VALUES
(777, 1238, '2022-08-01 12:00:00'),
(695, 4520, '2022-08-04 08:00:00'),
(125, 9630, '2022-08-04 16:00:00'),
(695, 9852, '2022-08-07 12:00:00');

select t.user_id, t.song_id, sum(t.song_plays) as song_plays
from
(
select user_id, song_id, song_plays
from songs_history
union all
select user_id, song_id, 1 as song_plays
from songs_weekly
where date(listen_time) <= '2022/08/04') t
group by user_id, song_id;




















-- 97. Write a query to find the confirmation rate of users who confirmed their signups with text messages.


-- Create the emails table
CREATE TABLE emails (
    email_id INT PRIMARY KEY,
    user_id INT,
    signup_date DATETIME
);

-- Insert data into the emails table
INSERT INTO emails (email_id, user_id, signup_date) VALUES
(125, 7771, '2022-06-14 00:00:00'),
(236, 6950, '2022-07-01 00:00:00'),
(433, 1052, '2022-07-09 00:00:00');

-- Create the texts table
CREATE TABLE texts (
    text_id INT PRIMARY KEY,
    email_id INT,
    signup_action VARCHAR(255)
);

-- Insert data into the texts table
INSERT INTO texts (text_id, email_id, signup_action) VALUES
(6878, 125, 'Confirmed'),
(6920, 236, 'Not Confirmed'),
(6994, 236, 'Confirmed');


select round(sum(case when t.signup_action = 'Confirmed' then 1 else 0
end)/count(*),2) as confirm_rate
from
emails e
join
texts t
on e.email_id = t.email_id;


















-- 98. Calculate the 3-day rolling average of tweets published by each user for each date that a tweet was posted.

-- Create the tweets table
CREATE TABLE tweets (
    tweet_id INT PRIMARY KEY,
    user_id INT,
    tweet_date TIMESTAMP
);

-- Insert data into the tweets table
INSERT INTO tweets (tweet_id, user_id, tweet_date) VALUES
(214252, 111, '2022-06-01 12:00:00'),
(739252, 111, '2022-06-01 12:00:00'),
(846402, 111, '2022-06-02 12:00:00'),
(241425, 254, '2022-06-02 12:00:00'),
(137374, 111, '2022-06-04 12:00:00');

select user_id, date_format(tweet_date, '%m/%d/%Y %h:%i:%s') as tweet_date, 
round(avg(count(distinct tweet_id)) over(order by tweet_date rows between 2
preceding and current row),2) as rolling_avg_3days
from tweets
group by user_id, tweet_date;

















-- Q.99 Write a query to obtain a breakdown of the time spent sending vs. opening snaps (as a percentage of total time spent on these activities) 
-- for each age group.


-- Create the activities table
CREATE TABLE activities (
    activity_id INT PRIMARY KEY,
    user_id INT,
    activity_type VARCHAR(255) CHECK (activity_type IN ('send', 'open', 'chat')),
    time_spent FLOAT,
    activity_date DATETIME
);

-- Insert data into the activities table
INSERT INTO activities (activity_id, user_id, activity_type, time_spent, activity_date) VALUES
(7274, 123, 'Open', 4.50, '2022-06-22 12:00:00'),
(2425, 123, 'Send', 3.50, '2022-06-22 12:00:00'),
(1413, 456, 'Send', 5.67, '2022-06-23 12:00:00'),
(1414, 789, 'Chat', 11.00, '2022-06-25 12:00:00'),
(2536, 456, 'Open', 3.00, '2022-06-25 12:00:00');

-- Create the age_breakdown table
CREATE TABLE age_breakdown (
    user_id INT PRIMARY KEY,
    age_bucket VARCHAR(255) CHECK (age_bucket IN ('21-25', '26-30', '31-35'))
);

-- Insert data into the age_breakdown table
INSERT INTO age_breakdown (user_id, age_bucket) VALUES
(123, '31-35'),
(456, '26-30'),
(789, '21-25');



select b.age_bucket,
round(100*sum(case when a.activity_type = 'Send' then a.time_spent else 0
end)/sum(a.time_spent),2) send_perc,
round(100*sum(case when a.activity_type = 'Open' then a.time_spent else 0
end)/sum(a.time_spent),2) open_perc
from
activities a
join
age_breakdown b
on a.user_id = b.user_id
where activity_type in ('Open', 'Send')
group by b.age_bucket
order by b.age_bucket;


















-- Q.100 Write a query to return the IDs of these LinkedIn power creators in ascending order.


-- Create the personal_profiles table
CREATE TABLE personal_profiles (
    profile_id INT PRIMARY KEY,
    name VARCHAR(255),
    followers INT
);

-- Insert data into the personal_profiles table
INSERT INTO personal_profiles (profile_id, name, followers) VALUES
(1, 'Nick Singh', 92000),
(2, 'Zach Wilson', 199000),
(3, 'Daliana Liu', 171000),
(4, 'Ravit Jain', 107000),
(5, 'Vin Vashishta', 139000),
(6, 'Susan Wojcicki', 39000);

-- Create the employee_company table
CREATE TABLE employee_company (
    personal_profile_id INT,
    company_id INT
);

-- Insert data into the employee_company table
INSERT INTO employee_company (personal_profile_id, company_id) VALUES
(1, 4),
(1, 9),
(2, 2),
(3, 1),
(4, 3),
(5, 6),
(6, 5);

-- Create the company_pages table
CREATE TABLE company_pages (
    company_id INT PRIMARY KEY,
    name VARCHAR(255),
    followers INT
);

-- Insert data into the company_pages table
INSERT INTO company_pages (company_id, name, followers) VALUES
(1, 'The Data Science Podcast', 8000),
(2, 'Airbnb', 700000),
(3, 'The Ravit Show', 6000),
(4, 'DataLemur', 200),
(5, 'YouTube', 16000000),
(6, 'DataScience.Vin', 4500),
(9, 'Ace The Data Science Interview', 4479);


select p.profile_id
from
personal_profiles p
join
employee_company e
on p.profile_id = e.personal_profile_id
join
company_pages c
on e.company_id = c.company_id
group by p.profile_id, p.followers
having p.followers > sum(c.followers)
order by profile_id;


																-- END--
