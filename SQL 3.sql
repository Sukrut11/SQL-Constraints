/* SQL Constraints
SQL constraints are used to specify rules for the data in a 
table.
Constraints are used to limit the type of data that can go into a table. This ensures the accuracy and reliability of
the data in the table. If there is any violation between the constraint and the data action, the action is aborted.
Constraints can be column level or table level.
Column level constraints apply to a column, and table level 
constraints apply to the whole table.

1. Not Null
2. Unique
3. Primary Key
4. Foreign Key
5. Check
6. Default
7. Index
*/
# Constraints are basically rules
##While defining constraints use capital letters
create database school;
use school;
create table student(
id int not null,
first_name varchar(25) not null, # Not have any null values
last_name varchar(25) not null,
age int
);
desc student; # Here it shows in id column that it cannot contain any null values (null = no) same for first 
#and last name; Age shows yes for null values

alter table student modify age int not null;
desc student;
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null,
unique (id) # Unique means same value will not be repeated
);
insert into person values(2, "Balaram", "Yadav", 16);
select * from person;

alter table person
add unique(first_name); # Applied unique connstraint for first_name
desc person;

alter table person
add constraint uc_person unique(age, first_name); # Combining two features (age, first_nname) and making a 
#new unique_constraint 

desc person;

alter table person
drop index uc_person; # Drop a unique constraint

# Primary Key
create table person1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25),
age int,
constraint pk_person primary key(id, last_name)
);
desc person1;
alter table person1
drop primary key;

alter table person1
add primary key(id);
