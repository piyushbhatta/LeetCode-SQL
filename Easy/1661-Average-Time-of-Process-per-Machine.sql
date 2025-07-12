Create table If Not Exists Activity (machine_id int, process_id int, activity_type TEXT, timestamp real);
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('0', '0', 'start', '0.712');
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('0', '0', 'end', '1.52');
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('0', '1', 'start', '3.14');
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('0', '1', 'end', '4.12');
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('1', '0', 'start', '0.55');
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('1', '0', 'end', '1.55');
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('1', '1', 'start', '0.43');
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('1', '1', 'end', '1.42');
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('2', '0', 'start', '4.1');
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('2', '0', 'end', '4.512');
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('2', '1', 'start', '2.5');
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('2', '1', 'end', '5');
SELECT * FROM Activity;
--There is a factory website that has several machines each running the same number of processes.
--Write a solution to find the average time each machine takes to complete a process.
--The time to complete a process is the 'end' timestamp minus the 'start' timestamp.
--The average time is calculated by the total time to complete every process
--on the machine divided by the number of processes that were run.
--The resulting table should have the machine_id along with the average
--time as processing_time, which should be rounded to 3 decimal places.
--Return the result table in any order.

SELECT a1.machine_id, ROUND(AVG(a2.timestamp - a1.timestamp), 3) AS processing_time
    FROM Activity AS A1 INNER JOIN Activity AS A2 ON A1.machine_id=A2.machine_id AND A1.process_id=A2.process_id
WHERE A1.activity_type='start' AND A2.activity_type='end'
GROUP BY a1.machine_id