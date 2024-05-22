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

--1. Вывести таблицу кафедр, но расположить ее поля в обратном порядке.
select Financing,Name
from Departments
order by Financing desc


--2. Вывести названия групп и их рейтинги, используя в качестве названий выводимых полей “Group Name” и “Group Rating” соответственно.
select Name as 'Group Name',Rating as 'Group Rating'
from Groups

--3. Вывести для преподавателей их фамилию, процент ставки по отношению к надбавке и процент ставки по отношению к зарплате (сумма ставки и надбавки).
select Surname,Premium,Salary
from Teachers

--4. Вывести таблицу факультетов в виде одного поля в следующем формате: “The dean of faculty [faculty] is [dean].”.
select concat('The dean of faculty ', Dean, ' is ', Name, '.') as Faculty_Info
from Faculties;

--5. Вывести фамилии преподавателей, которые являются профессорами и ставка которых превышает 1050.
select Surname
from Teachers
where IsProfessor = 1 AND Salary > 1050

--6. Вывести названия кафедр, фонд финансирования которых меньше 11000 или больше 25000.
select Name,Financing
from Departments
where Financing <= 11000 or Financing >= 25000

--7. Вывести названия факультетов кроме факультета “Computer Science”.
select Name
from Faculties
where Name != 'Computer Science';

--8. Вывести фамилии и должности преподавателей, которые не являются профессорами.
select Surname,Position
from Teachers
where IsProfessor = 1

--9. Вывести фамилии, должности, ставки и надбавки ассистентов, у которых надбавка в диапазоне от 160 до 550.
select Surname,Position,Salary,Premium
from Teachers
where Premium >= 9000 and Premium <= 9500

--10.Вывести фамилии и ставки ассистентов.
select Surname,Premium
from Teachers
where IsAssistant = 1

--11.Вывести фамилии и должности преподавателей, которые были приняты на работу до 01.01.2000.
select Surname,Position
from Teachers
where EmploymentDate <= '01.01.2000'

--12.Вывести названия кафедр, которые в алфавитном порядке располагаются до кафедры “Software Development”. Выводимое поле должно иметь название “Name of Department”.
select Name as 'Name of Department'
from Departments
where Name < 'Software Development'
order by Name;

--13.Вывести фамилии ассистентов, имеющих зарплату (сумма ставки и надбавки) не более 1200.
select Surname
from Teachers
where Premium + Salary < 1200 and IsAssistant = 1

--14.Вывести названия групп 5-го курса, имеющих рейтинг в диапазоне от 2 до 4.
select Name
from Groups
where Rating >= 2 and Rating <= 4

--15.Вывести фамилии ассистентов со ставкой меньше 550 или надбавкой меньше 200.
select Surname
from Teachers
where Salary <= 15000 or Premium <= 9000
