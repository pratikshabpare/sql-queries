
mysql> create database MarvellousPPA;
Query OK, 1 row affected (0.30 sec)

mysql> show databases;

mysql> use Marvellousppa;
Database changed
mysql> create table student( rollno int primary key,name varchar(100),city varchar(100),marks int, course varchar(50));
Query OK, 0 rows affected (0.10 sec)

mysql> create table course( course_name varchar(50) primary key,duration int,fees int);
Query OK, 0 rows affected (0.04 sec)

mysql> INSERT INTO student VALUES
    -> (1, 'Raj', 'Pune', 85, 'Python'),
    -> (2, 'Sneha', 'Mumbai', 90, 'Java'),
    -> (3, 'Amit', 'Nashik', 78, 'Python'),
    -> (4, 'Meena', 'Pune', 92, 'C++'),
    -> (5, 'Rohan', 'Nagpur', 67, 'Java'),
    -> (6, 'Pooja', 'Pune', 70, 'C++'),
    -> (7, 'Nikhil', 'Mumbai', 88, 'Python'),
    -> (8, 'Swati', 'Nagpur', 82, 'Java');
Query OK, 8 rows affected (0.01 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> insert into course values ('python',12,1000),('java',10,9500),('C++',8,8000),('Advanced java',14,12000);
Query OK, 4 rows affected (0.01 sec)


mysql> select * from student;
+--------+--------+--------+-------+--------+
| rollno | name   | city   | marks | course |
+--------+--------+--------+-------+--------+
|      1 | Raj    | Pune   |    85 | Python |
|      2 | Sneha  | Mumbai |    90 | Java   |
|      3 | Amit   | Nashik |    78 | Python |
|      4 | Meena  | Pune   |    92 | C++    |
|      5 | Rohan  | Nagpur |    67 | Java   |
|      6 | Pooja  | Pune   |    70 | C++    |
|      7 | Nikhil | Mumbai |    88 | Python |
|      8 | Swati  | Nagpur |    82 | Java   |
+--------+--------+--------+-------+--------+
8 rows in set (0.00 sec)

mysql> select name from student where marks > 80;
+--------+
| name   |
+--------+
| Raj    |
| Sneha  |
| Meena  |
| Nikhil |
| Swati  |
+--------+
5 rows in set (0.00 sec)

mysql> select * from student where city='Pune' or city='mumbai';
+--------+--------+--------+-------+--------+
| rollno | name   | city   | marks | course |
+--------+--------+--------+-------+--------+
|      1 | Raj    | Pune   |    85 | Python |
|      2 | Sneha  | Mumbai |    90 | Java   |
|      4 | Meena  | Pune   |    92 | C++    |
|      6 | Pooja  | Pune   |    70 | C++    |
|      7 | Nikhil | Mumbai |    88 | Python |
+--------+--------+--------+-------+--------+
5 rows in set (0.00 sec)

mysql> select * from student where city != "Nagpur";
+--------+--------+--------+-------+--------+
| rollno | name   | city   | marks | course |
+--------+--------+--------+-------+--------+
|      1 | Raj    | Pune   |    85 | Python |
|      2 | Sneha  | Mumbai |    90 | Java   |
|      3 | Amit   | Nashik |    78 | Python |
|      4 | Meena  | Pune   |    92 | C++    |
|      6 | Pooja  | Pune   |    70 | C++    |
|      7 | Nikhil | Mumbai |    88 | Python |
+--------+--------+--------+-------+--------+
6 rows in set (0.00 sec)

mysql> select distinct city from student;
+--------+
| city   |
+--------+
| Pune   |
| Mumbai |
| Nashik |
| Nagpur |
+--------+
4 rows in set (0.01 sec)

mysql> select name ,marks  from student order by Marks desc;
+--------+-------+
| name   | marks |
+--------+-------+
| Meena  |    92 |
| Sneha  |    90 |
| Nikhil |    88 |
| Raj    |    85 |
| Swati  |    82 |
| Amit   |    78 |
| Pooja  |    70 |
| Rohan  |    67 |
+--------+-------+
8 rows in set (0.02 sec)

mysql> select count(course ) from student;
+----------------+
| count(course ) |
+----------------+
|              8 |
+----------------+
1 row in set (0.01 sec)


mysql> select course,count(*) As student_count from student group by course;
+--------+---------------+
| course | student_count |
+--------+---------------+
| Python |             3 |
| Java   |             3 |
| C++    |             2 |
+--------+---------------+
3 rows in set (0.00 sec)

mysql> select count from student;
ERROR 1054 (42S22): Unknown column 'count' in 'field list'
mysql> select count(*) from student;
+----------+
| count(*) |
+----------+
|        8 |
+----------+
1 row in set (0.03 sec)

mysql> select * from student where marks between 70 and 90;
+--------+--------+--------+-------+--------+
| rollno | name   | city   | marks | course |
+--------+--------+--------+-------+--------+
|      1 | Raj    | Pune   |    85 | Python |
|      2 | Sneha  | Mumbai |    90 | Java   |
|      3 | Amit   | Nashik |    78 | Python |
|      6 | Pooja  | Pune   |    70 | C++    |
|      7 | Nikhil | Mumbai |    88 | Python |
|      8 | Swati  | Nagpur |    82 | Java   |
+--------+--------+--------+-------+--------+
6 rows in set (0.00 sec)

mysql> select * from student where name Like 'S%';
+--------+-------+--------+-------+--------+
| rollno | name  | city   | marks | course |
+--------+-------+--------+-------+--------+
|      2 | Sneha | Mumbai |    90 | Java   |
|      8 | Swati | Nagpur |    82 | Java   |
+--------+-------+--------+-------+--------+
2 rows in set (0.00 sec)

mysql> select * from student where course != 'java';
+--------+--------+--------+-------+--------+
| rollno | name   | city   | marks | course |
+--------+--------+--------+-------+--------+
|      1 | Raj    | Pune   |    85 | Python |
|      3 | Amit   | Nashik |    78 | Python |
|      4 | Meena  | Pune   |    92 | C++    |
|      6 | Pooja  | Pune   |    70 | C++    |
|      7 | Nikhil | Mumbai |    88 | Python |
+--------+--------+--------+-------+--------+
5 rows in set (0.00 sec)

mysql> select * from student where marks In (67,78);
+--------+-------+--------+-------+--------+
| rollno | name  | city   | marks | course |
+--------+-------+--------+-------+--------+
|      3 | Amit  | Nashik |    78 | Python |
|      5 | Rohan | Nagpur |    67 | Java   |
+--------+-------+--------+-------+--------+
2 rows in set (0.00 sec)

mysql> select max(marks) from student;
+------------+
| max(marks) |
+------------+
|         92 |
+------------+
1 row in set (0.00 sec)

mysql> select max(marks),min(marks),avg(marks) from student;
+------------+------------+------------+
| max(marks) | min(marks) | avg(marks) |
+------------+------------+------------+
|         92 |         67 |    81.5000 |
+------------+------------+------------+
1 row in set (0.00 sec)

mysql> select city,count(*) from student group by city;
+--------+----------+
| city   | count(*) |
+--------+----------+
| Pune   |        3 |
| Mumbai |        2 |
| Nashik |        1 |
| Nagpur |        2 |
+--------+----------+
4 rows in set (0.00 sec)

mysql> select course,sum(marks),avg(marks) from student group by course;
+--------+------------+------------+
| course | sum(marks) | avg(marks) |
+--------+------------+------------+
| Python |        251 |    83.6667 |
| Java   |        239 |    79.6667 |
| C++    |        162 |    81.0000 |
+--------+------------+------------+
3 rows in set (0.00 sec)

mysql> select city,count(*) from student group by city having count(*) > 1;
+--------+----------+
| city   | count(*) |
+--------+----------+
| Pune   |        3 |
| Mumbai |        2 |
| Nagpur |        2 |
+--------+----------+
3 rows in set (0.01 sec)

mysql> alter table student add email varchar(100);
Query OK, 0 rows affected (0.06 sec)

mysql> insert into student (rollno,name,city,marks,course) values(9,'Anjali','nasik',79,'python');
Query OK, 1 row affected (0.03 sec)

mysql> update student set marks=72 where name='Rohan';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> delete from student where rollno=8;
Query OK, 1 row affected (0.01 sec)

mysql> update student set course='advanced java' where course='java';
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql>
