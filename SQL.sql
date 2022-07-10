SHOW databases;
CREATE database Store;
use Store;
create table Dogs
(
animal_id int(99) primary key,
breed varchar(55) NOT NULL,
name varchar(55) NOT NULL,
namber int(2) NOT NULL 
);
desc Dogs;
insert into Dogs value (1, "beagle", "Alf", 1);
insert into Dogs value (2, "bulldog", "Ben", 1);
insert into Dogs value (3, "canes", "Choo", 1);
insert into Dogs value (4, "mastiff", "Doggi", 1);
insert into Dogs value (5, "pug", "Zevs", 1);
select * from Dogs;
alter table Dogs add column age int;
update Dogs set age = 2 where id = 1;
update Dogs set age = 5 where id = 2;
update Dogs set age = 3 where id = 3;
update Dogs set age = 4 where id = 4;
update Dogs set age = 5 where id = 5;
create table Client
(id int primary key,
name varchar(55) NOT NULL,
city varchar(55) NULL)
;
insert into Client value (1, "Petr_Petrov", "Moscow");
insert into Client value (2, "Ivan_Ivanov", "Tomsk");
insert into Client value (3, "Sergh_Serghio", "Novosibirsk");
insert into Client value (4, "Toma_Petrova", "Moscow");
insert into Client value (5, "Aleksandra_Osh", "Moscow");
select * from Client;
select * from Client where city = "Moscow";
select * from Client order by name;
select * from Dogs group by age limit 3;
update Client set animal_id = 1 where id = 1;
select name, count(*) from Dogs group by age having count(*) > 3; 
select c.name, d.name from Client c join Dogs d on c.animal_id = d.animal_id;
