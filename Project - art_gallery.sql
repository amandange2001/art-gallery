-- Create the art_gallery database and switch to it
create database art_gallery;
use art_gallery;

-- Create the artists table
create table artists (
    id int primary key,
    first_name varchar(20) not null,
    last_name varchar(20) not null
);
desc artists;

-- Create the collectors table
create table collectors (
    id int primary key,
    first_name varchar(20) not null,
    last_name varchar(20) not null
);
desc collectors;

-- Create the paintings table
create table paintings (
    id int primary key,
    name varchar(25) not null,
    artist_id int,
    listed_price decimal(20, 2),
    foreign key (artist_id) references artists (id)
);
desc paintings;

-- Create the sales table
create table sales (
    id int primary key,
    date date,
    painting_id int,
    artist_id int,
    collector_id int,
    sales_price decimal(20, 2),
    foreign key (painting_id) references paintings (id),
    foreign key (artist_id) references artists (id),
    foreign key (collector_id) references collectors (id)
);
desc sales;

-- Insert data into artists table
insert into artists values
(1,'Thomas','Black'),
(2,'Kate','Smith'),
(3,'Natali','Wein'),
(4,'Francesco','Benelli');
select * from artists;

-- Insert data into collectors table
insert into collectors values
(101,'Brandon','Cooper'),
(102,'Laura','Fisher'),
(103,'Christina','Buffet'),
(104,'Steve','Stevenson');
select * from collectors;

-- Insert data into paintings table
insert into paintings values
    (11, 'Miracle', 1, 300.00),
    (12, 'Sunshine', 1, 700.00),
    (13, 'Pretty woman', 2, 2800.00),
    (14, 'Handsome man', 2, 2300.00),
    (15, 'Barbie', 3, 250.00),
    (16, 'Cool painting', 3, 5000.00),
    (17, 'Black square#1000', 3, 50.00),
    (18, 'Mountains', 4, 1300.00);
select * from paintings;

-- Insert data into sales table
insert into sales values
    (1001, '2021-11-01', 13, 2, 104, 2500.00),
    (1002, '2021-11-10', 14, 2, 102, 2300.00),
    (1003, '2021-11-10', 11, 1, 102, 300.00),
    (1004, '2021-11-15', 16, 3, 103, 4000.00),
    (1005, '2021-11-22', 15, 3, 103, 200.00),
    (1006, '2021-11-22', 17, 3, 103, 50.00);
select * from sales;


