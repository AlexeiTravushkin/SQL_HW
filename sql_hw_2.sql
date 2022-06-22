-- Создать таблицу employees

create table employees(
    id serial primary key,
    employee_name varchar(50) not null 
);

-- Наполнить таблицу employee 70 строками

insert into employees(employee_name)
values ('Rodionov Viktorin'),
       ('Filatov Flegont'),
       ('Dmitriev Anfim'),
       ('Antonov Donat'),
       ('Belousov Anatoliy'),
       ('Moiseev Mavrikiy'),
       ('Samoylov Ferapont'),
       ('Nikonov Emilian'),
       ('Trofimov Marian'),
       ('Makarov Boris'),
       ('Shubin Amvrosiy'),
       ('Sharapov Aetiy'),
       ('Fomichyov Sotir'),
       ('Samoylov Ryurik'),
       ('Moiseev Agafangel'),
       ('Drozdov Yust'),
       ('Knyazev Pankratiy'),
       ('Prohorov Polikarp'),
       ('Avdeev Boleslav'),
       ('Kopylov Iov'),
       ('Rybakov Feoktist'),
       ('Gerasimov Favstin'),
       ('Nikolaev Feliks'),
       ('Davydov Onisiy'),
       ('Romanov Feliks'),
       ('Zaharov Ionafan'),
       ('Danilov Bryachislav'),
       ('Isakov Vavila'),
       ('Lazarev Vladimir'),
       ('Grishin Iezekiil'),
       ('Muravyov Ilariy'),
       ('Baranov Kiriak'),
       ('Burov Ulyan'),
       ('Kuzmin Dalmat'),
       ('Ignatev Vadim'),
       ('Romanov Rafail'),
       ('Vishnyakov Ioannikiy'),
       ('Panov Iezekiil'),
       ('Efremov Yanuariy'),
       ('Rusakov Trofim'),
       ('Subbotin Pitirim'),
       ('Gerasimov Osip'),
       ('Novikov Parmen'),
       ('Arhipov Leonid'),
       ('Zimin Anton'),
       ('Panov Fetis'),
       ('Sidorov Izot'),
       ('Pavlov Faviy'),
       ('Ershov Merkuriy'),
       ('Kostin Nektariy'),
       ('Vorobyov Luka'),
       ('Antonov Harlampiy'),
       ('Burov Akundin'),
       ('Arhipov Aris'),
       ('Bobrov Favstin'),
       ('Veselov Kir'),
       ('Shilov Immanuil'),
       ('Ryabov Flor'),
       ('Belov Avtonom'),
       ('Sobolev Nil'),
       ('Kulikov Dmitriy'),
       ('Kryukov Anikita'),
       ('Tarasov Gleb'),
       ('Rybakov Aglaiy'),
       ('Sitnikov Foma'),
       ('Myasnikov Fedosiy'),
       ('Sidorov Kosma'),
       ('Aleksandrov Satir'),
       ('Isaev Feofil'),
       ('Bobrov Makariy');
      
select * from employees;
 
-- Создать таблицу salary

create table salary_hw(
      id serial primary key,
      monthly_salary int not null
);

-- Наполнить таблицу salary 15 строками

insert into salary_hw(monthly_salary) 
values ('1000'),
       ('1100'),
       ('1200'),
       ('1300'),
       ('1400'),
       ('1500'),
       ('1600'),
       ('1700'),
       ('1800'),
       ('1900'),
       ('2000'),
       ('2100'),
       ('2200'),
       ('2300'),
       ('2400'),
       ('2500');
      
select * from salary_hw;

-- Создать таблицу employee_salary

create table employee_salary(
     id serial primary key,
     employee_id int not null unique,
     salary_id int not null
);

select * from employee_salary;

-- Наполнить таблицу employee_salary 40 строками
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
values (16, 8), 
       (28, 4),
       (44, 16),
       (71, 12),
	   (55,3),
	   (9, 7),
	   (57, 11),
	   (83, 15),
	   (69, 2),
	   (14, 6),
	   (33, 10),
	   (74, 14),	   
	   (43, 1),
	   (45, 16),
	   (61, 9),
	   (98, 13),	   
	   (1, 16),
	   (34, 6),
	   (25, 8),
	   (73, 12),
	   (8, 13),
	   (19, 3),
	   (36, 7),
	   (95, 12),
	   (65, 14),
	   (3, 2),
	   (18, 6),
	   (88, 11),
	   (48, 13),
	   (24, 1),
	   (27, 5),
	   (77, 9),	   
	   (22, 12),
	   (38, 16),
	   (64, 4),
	   (81, 8),	   
	   (11, 11),
	   (5, 15),
	   (29, 3),
	   (75, 7);	  
      
-- Создать таблицу roles
	  
  create table roles_hw(
      id serial primary key,
      role_name int not null unique
);

select * from roles_hw;

-- Поменять тип столбца role_name с int на varchar(30)


alter table roles_hw alter column role_name type varchar(30);


-- Наполнить таблицу roles 20 строками

insert into roles_hw(role_name)
     values  ('Junior_Python_developer'),
             ('Middle_Python_developer'),
             ('Senior_Python_developer'),
             ('Junior_Java_developer'),
             ('Middle_Java_developer'),
             ('Senior_Java_developer'),
             ('Junior_JavaScript_developer'),
             ('Middle_JavaScript_developer'),
             ('Senior_JavaScript_developer'),
             ('Junior_Manual_QA_engineer'),
             ('Middle_Manual_QA_engineer'),
             ('Senior_Manual_QA_engineer'),
             ('Project_Manager'),
             ('Designer'),
             ('HR'),
             ('CEO'),
             ('Sales_manager'),
             ('Junior_Automation_QA_engineer'),
             ('Middle_Automation_QA_engineer'),
             ('Senior_Automation_QA_engineer');
           
            
-- Создать таблицу roles_employee
            
create table roles_employee(
   id serial primary key,
   employee_id int not null unique,
   role_id int not null
);

select * from roles_employee;

-- Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id, role_id)
values (50, 20),
       (52, 2),
	   (53, 11),
	   (55, 5),
	   (56, 6),
	   (57, 10),
	   (59, 13),
	   (60, 1),
	   (61, 8),
	   (62, 9),	   
	   (63, 12),
	   (65, 16),
	   (66, 4),
	   (67, 8),	   
	   (69, 11),
	   (7, 15),
	   (27, 3),
       (70, 7),
	   (2, 3),
	   (4, 5), 
	   (8, 7), 
	   (10, 9),
	   (13,11),
	   (16, 13),
	   (19, 15),
	   (45, 12),
	   (20, 17),
	   (23, 19),
	   (26, 1),
	   (28, 4),	   
	   (31, 6),
	   (32, 8),
	   (33, 10),
	   (36, 13),	   
	   (38, 16),
	   (41, 4),
	   (43, 8),
	   (44, 12),
	   (47, 14),
	   (49, 18);

