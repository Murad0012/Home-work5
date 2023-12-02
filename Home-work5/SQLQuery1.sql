CREATE DATABASE HomeWork5
go
USE HomeWork5

CREATE TABLE Users(
	Id int PRIMARY KEY identity,
	FirstName varchar(255),
	LastName varchar(255),
	Email varchar(255),
	[Password] varchar(255),
	IsActive bit
)

CREATE TABLE UserDetails(
	UserId int FOREIGN KEY REFERENCES Users(ID) UNIQUE,
	PhoneNumber varchar(255),
	[Address] varchar(255),
)
	
CREATE TABLE Products(
	Id int PRIMARY KEY identity,
	[Name] varchar(255),
	Price DECIMAL(7, 2)
)

CREATE TABLE Orders(
	Id int PRIMARY KEY identity,
	ExecutedDate date,
	UserId int FOREIGN KEY REFERENCES Users(ID),
)

CREATE TABLE OrderProducts (
	ProductsId INT FOREIGN KEY REFERENCES Products(ID),
    OrderId INT FOREIGN KEY REFERENCES Orders(ID)
)

go

INSERT INTO Users VALUES
('Murad','Memmedzade','murad.mammedzade11@gmail.com','cXVKpFbiMaI04Ke','TRUE'),
('Tural','Memmedov','tural.memmedov@gmail.com','S9vBARIRZ','FALSE'),
('Elcin','Axundova','elcin.axundova@gmail.com','QBBNObuK4oMEetXOF','FALSE'),
('Ilkin','Cəfərli','ilkin.cəfərli@gmail.com','h9cFdosIbjY5hFkSJ','TRUE'),
('Aybeniz','İdrisov','aybeniz.idrisov@gmail.com','O4IWfrJTm0','TRUE')

INSERT INTO UserDetails VALUES
(1,'1435434986','C. Cabbarli Kuc. 44'),
(2,'2435484986','Y.V. Cemenzeminli Kuc. 129'),
(3,'1235249086','Fuzuli Kuc. 77'),
(4,'0135445986','R. Behbudov Kuc. 57'),
(5,'7435434286','28 May Kuc. 54 ')

INSERT INTO Products VALUES
('Cola',1.50),
('Fanta',1.20),
('Sprite',1.60),
('Bread',0.50),
('Table',30.99)

INSERT INTO Orders VALUES
('2023-11-01',1),
('2023-10-02',2),
('2023-07-05',3),
('2023-01-07',4),
('2023-11-04',5)

INSERT INTO OrderProducts VALUES
(1,1),
(2,2),
(1,3),
(2,4),
(3,5)

go

select * from Users
select * from Products
select * from Orders
select * from OrderProducts
select * from UserDetails

SELECT * FROM Users WHERE FirstName LIKE 'T%';
SELECT * FROM Products WHERE Price > 30;
SELECT * FROM Orders WHERE Month(ExecutedDate) = '11' ;

--drop table UserDetails	
--drop table Users
--drop table Products
--drop table Orders
--drop table OrderProducts