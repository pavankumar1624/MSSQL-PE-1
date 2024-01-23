create Database PracticeExercise2
use PracticeExercise2

-- Subjects table
create table Subjects (
    SubjectID int primary key,
    SubjectName nvarchar(50) not null
)

--Classes table
create table Classes (
    ClassID int primary key,
    ClassName nvarchar(50) not null
)

-- Students table
create table Student (
    StudentID int primary key,
    FirstName nvarchar(50) not null,
    LastName nvarchar(50) not null,
    DateOfBirth Date,
    ClassID int foreign key references Classes,
    SubjectID int foreign key references Subjects
)

insert into Subjects values
    (11, 'dotnet'),
    (12, 'java'),
    (13, 'python'),
    (14, 'c++'),
    (15, 'Physics'),
	(16, 'Chemistry'),
	(17,'ComputerScience'),
	(18,'Commerce');

insert into Classes values
    (100, 'Class A'),
    (101, 'Class B'),
    (102, 'Class C'),
    (103, 'Class D'),
    (104, 'Class E');

insert into Student values
    (5113, 'pavan', 'g', '2003-03-30', 100, 17),
    (2113, 'kumar', 'k', '2005-05-25', 101, 12),
    (6114, 'priya', 's', '2004-06-20', 102, 13),
    (8116, 'mahesh', 'babu', '2003-09-18', 103, 18),
    (9118, 'dhoni', 'cap', '2006-11-05', 104,14);

create index SCid_index on Student(ClassID)

create index SSid_index on Student(SubjectID)

select * from Classes
select * from Student 
select * from Subjects


select StudentID, FirstName +' '+ LastName 'Student Name', DateOfBirth DOB, C.ClassID, c.ClassName, sub.SubjectID, sub.SubjectName 
from Student s 
join Classes c on s.ClassID = c.ClassID 
join Subjects sub on sub.SubjectID = s.SubjectID