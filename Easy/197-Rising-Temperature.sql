Create table If Not Exists Weather (id int, recordDate date, temperature int);

insert into Weather (id, recordDate, temperature) values ('1', '2015-01-01', '10');
insert into Weather (id, recordDate, temperature) values ('2', '2015-01-02', '25');
insert into Weather (id, recordDate, temperature) values ('3', '2015-01-03', '20');
insert into Weather (id, recordDate, temperature) values ('4', '2015-01-04', '30');

SELECT DISTINCT w1.id FROM Weather AS w1 JOIN Weather AS w2
WHERE julianday(w1.recordDate)-julianday(w2.recordDate)  = 1 AND w1.temperature>w2.temperature
