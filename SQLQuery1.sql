CREATE DATABASE DemoApp

USE DemoApp

CREATE TABLE Users(
ID int PRIMARY KEY IDENTITY,
Name nvarchar(50) NOT NULL,
Surname nvarchar(50) NOT NULL,
Email nvarchar(50) UNIQUE,
RegistrationDate datetime  CHECK(RegistrationDate <= GetDate()) DEFAULT('06.04.2023'),
ContactNumber nvarchar(50) DEFAULT('+994000000000'),
Age int CHECK(Age > 18),
Address nvarchar(50)
)
DROP TABLE Users

INSERT INTO Users VALUES
('Naim','Rahimov','naim.rahimov@gmail.com',default,'+994555780181',27,'Khara Kharayev'),
('Isa','Rahimov','isa.rahimov@gmail.com','03.04.2023',default,26,'Nariman Narimanov')
SELECT Name, Surname, Email FROM Users

Create TABLE Categories(
ID int PRIMARY KEY IDENTITY,
Name nvarchar(50) NOT NULL,
Slug nvarchar(50) UNIQUE,
CreatedAt datetime DEFAULT('04.04.2023'),
IsActive bit 
)
SELECT Name, IsActive from Categories

