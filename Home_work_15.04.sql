use Academy

insert into Departments(Financing, Name)
values(20000, 'Designer'),
(30000, 'Programer'),
(15000, 'Cameramen'),
(14000, 'Cleaner'),
(50000, 'Boss')

insert into Faculties(Dean, Name)
values('Mirox', 'Cub'),
('Hrek', 'Tutia'),
('Mirrow', 'Merman'),
('Tistor', 'Marela'),
('Phelix', 'Worist')

insert into Groups(Name, Rating, Year)
values('Cub', 3, 1),
('Tutia', 2, 4),
('Merman', 4, 3),
('Marela', 1, 5),
('Worist', 5, 2)

insert into Teachers(EmploymentDate,IsAssistant,IsProfessor,Name,Position,Premium,Salary,Surname)
values('1999-07-07', 1, 0, 'Cub', 'Accountant', 12000, 30000, 'medin'),
('1990-02-07', 0, 1, 'Tutia', 'Bailiff', 15000, 23000, 'flour'),
('2003-06-28', 0, 1, 'Merman', 'Assistant', 9000, 20000, 'nat'),
('2001-11-05', 0, 1, 'Marela', 'Bartender', 8000, 30000, 'brew'),
('1995-09-18', 1, 0, 'Worist', 'Nurse', 10000, 25000, 'pat')

--1. ������� ������� ������, �� ����������� �� ���� � �������� �������.
select Financing,Name
from Departments
order by Financing desc


--2. ������� �������� ����� � �� ��������, ��������� � �������� �������� ��������� ����� �Group Name� � �Group Rating� ��������������.
select Name as 'Group Name',Rating as 'Group Rating'
from Groups

--3. ������� ��� �������������� �� �������, ������� ������ �� ��������� � �������� � ������� ������ �� ��������� � �������� (����� ������ � ��������).
select Surname,Premium,Salary
from Teachers

--4. ������� ������� ����������� � ���� ������ ���� � ��������� �������: �The dean of faculty [faculty] is [dean].�.
select concat('The dean of faculty ', Dean, ' is ', Name, '.') as Faculty_Info
from Faculties;

--5. ������� ������� ��������������, ������� �������� ������������ � ������ ������� ��������� 1050.
select Surname
from Teachers
where IsProfessor = 1 AND Salary > 1050

--6. ������� �������� ������, ���� �������������� ������� ������ 11000 ��� ������ 25000.
select Name,Financing
from Departments
where Financing <= 11000 or Financing >= 25000

--7. ������� �������� ����������� ����� ���������� �Computer Science�.
select Name
from Faculties
where Name != 'Computer Science';

--8. ������� ������� � ��������� ��������������, ������� �� �������� ������������.
select Surname,Position
from Teachers
where IsProfessor = 1

--9. ������� �������, ���������, ������ � �������� �����������, � ������� �������� � ��������� �� 160 �� 550.
select Surname,Position,Salary,Premium
from Teachers
where Premium >= 9000 and Premium <= 9500

--10.������� ������� � ������ �����������.
select Surname,Premium
from Teachers
where IsAssistant = 1

--11.������� ������� � ��������� ��������������, ������� ���� ������� �� ������ �� 01.01.2000.
select Surname,Position
from Teachers
where EmploymentDate <= '01.01.2000'

--12.������� �������� ������, ������� � ���������� ������� ������������� �� ������� �Software Development�. ��������� ���� ������ ����� �������� �Name of Department�.
select Name as 'Name of Department'
from Departments
where Name < 'Software Development'
order by Name;

--13.������� ������� �����������, ������� �������� (����� ������ � ��������) �� ����� 1200.
select Surname
from Teachers
where Premium + Salary < 1200 and IsAssistant = 1

--14.������� �������� ����� 5-�� �����, ������� ������� � ��������� �� 2 �� 4.
select Name
from Groups
where Rating >= 2 and Rating <= 4

--15.������� ������� ����������� �� ������� ������ 550 ��� ��������� ������ 200.
select Surname
from Teachers
where Salary <= 15000 or Premium <= 9000
