Drop table Ratings;
Drop table Users;
Create table Users
(Id Int not null primary key IDENTITY(1,1),
Name nvarchar(max),
Age int Not null Default(18),
Phone nvarchar(9) not null unique,
CHECK (Age>=0)
)

Insert into Users (Name, Age, Phone)
values
('Misha', 24, '970000000'),
('Alex', 44, '970000001'),
('Ivan', 12, '970000002')


Insert into Users (Name, Phone)
values
('Masha', '970000003')

Delete Users
where Name = 'Ivan'


Insert into Users (Name, Phone)
values
('Egor', '970000005')

Select * From Users

Create table Ratings
(Id int not null primary key Identity(1,1),
Subject nvarchar(max) not null,
Rating int not null,
UserId int Unique,
FOREIGN KEY (UserId) REFERENCES Users(Id)
)

Insert into Ratings
values
('Math' , 5, 1),
('Math' , 3, 2),
('History' , 5, 4),
('Physics' , 5, 5)

select * from Ratings

create table Subjects
(Id int not null primary key Identity(1,1),
Name nvarchar(max))

create table User_Subject
(Id int not null primary key identity(1,1),
UserId int not null,
SubjectId int not null,
FOREIGN KEY (UserId) REFERENCES Users(Id),
FOREIGN KEY (SubjectId) REFERENCES Subjects(Id)
)

Insert into Subjects
values
('Math'),
('History'),
('Physics')

Select * from Users;


Select * from Subjects;

Insert into User_Subject
values
(1,2),
(1,3),
(2, 1),
(4, 1),
(4,3),
(5,2)

select Users.Name, Subjects.Name from Users 
join User_Subject ON Users.Id = User_Subject.UserId
join Subjects On Subjects.Id = User_Subject.SubjectId