
mysql> create  database StudentInfo;
Query OK, 1 row affected (0.14 sec)


mysql> use StudentInfo;
Database changed
mysql> create table student(RollNo int,Name varchar(255),Address varchar(255),Age int,Marks int);
Query OK, 0 rows affected (0.16 sec)

mysql> Describe Student;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| RollNo  | int          | YES  |     | NULL    |       |
| Name    | varchar(255) | YES  |     | NULL    |       |
| Address | varchar(255) | YES  |     | NULL    |       |
| Age     | int          | YES  |     | NULL    |       |
| Marks   | int          | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
5 rows in set (0.06 sec)

mysql> Insert into Student values(1,'Amit','Pune'21,90);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '21,90)' at line 1
mysql> Insert into Student values(1,'Amit','Pune',21,90);
Query OK, 1 row affected (0.03 sec)

  
mysql> INSERT INTO Student VALUES
    -> (1, 'Amit', 'Pune', 21, 90),
    -> (2, 'Sagar', 'Mumbai', 23, 89),
    -> (3, 'Sumit', 'Nasik', 23, 78),
    -> (4, 'Pooja', 'Nasik', 21, 89),
    -> (5, 'Pooja', 'Nasik', 21, 89),
    -> (6, 'Pranali', 'Nasik', 24, 80),
    -> (7, 'Parag', 'Nagar', 20, 57),
    -> (8, 'Poorva', 'Nagpur', 27, 67),
    -> (9, 'Ramesh', 'Pune', 20, 78),
    -> (10, 'Rahul', 'Pune', 26, 90),
    -> (11, 'Bhavesh', 'Mumbai', 20, 98),
    -> (12, 'Chetann', 'Nasik', 26, 56),
    -> (13, 'Deven', 'Satara', 24, 90),
    -> (14, 'Gaurav', 'Dhule', 23, 89),
    -> (15, 'Hemant', 'Mumbai', 20, 98),
    -> (16, 'Radhika', 'Mumbai', 29, 67),
    -> (17, 'Riya', 'Sangli', 26, 50),
    -> (18, 'Gautam', 'Satara', 24, 45),
    -> (19, 'Yuvraj', 'Aurangabad', 30, 77),
    -> (20, 'Pratik', 'Shirdi', 21, 91);
Query OK, 20 rows affected (0.01 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql> select * from Student where address='Nasik';
+--------+---------+---------+------+-------+
| RollNo | Name    | Address | Age  | Marks |
+--------+---------+---------+------+-------+
|      3 | Sumit   | Nasik   |   23 |    78 |
|      4 | Pooja   | Nasik   |   21 |    89 |
|      5 | Pooja   | Nasik   |   21 |    89 |
|      6 | Pranali | Nasik   |   24 |    80 |
|     12 | Chetann | Nasik   |   26 |    56 |
+--------+---------+---------+------+-------+
5 rows in set (0.00 sec)

mysql> select * from Student where age=21;
+--------+--------+---------+------+-------+
| RollNo | Name   | Address | Age  | Marks |
+--------+--------+---------+------+-------+
|      1 | Amit   | Pune    |   21 |    90 |
|      1 | Amit   | Pune    |   21 |    90 |
|      4 | Pooja  | Nasik   |   21 |    89 |
|      5 | Pooja  | Nasik   |   21 |    89 |
|     20 | Pratik | Shirdi  |   21 |    91 |
+--------+--------+---------+------+-------+
5 rows in set (0.00 sec)

mysql> select * from Student where Marks=90;
+--------+-------+---------+------+-------+
| RollNo | Name  | Address | Age  | Marks |
+--------+-------+---------+------+-------+
|      1 | Amit  | Pune    |   21 |    90 |
|      1 | Amit  | Pune    |   21 |    90 |
|     10 | Rahul | Pune    |   26 |    90 |
|     13 | Deven | Satara  |   24 |    90 |
+--------+-------+---------+------+-------+
4 rows in set (0.00 sec)

mysql> select  Name from Student where address="mumbai";
+---------+
| Name    |
+---------+
| Sagar   |
| Bhavesh |
| Hemant  |
| Radhika |
+---------+
4 rows in set (0.00 sec)

mysql> select name,age from Student where age>=21;
+---------+------+
| name    | age  |
+---------+------+
| Amit    |   21 |
| Amit    |   21 |
| Sagar   |   23 |
| Sumit   |   23 |
| Pooja   |   21 |
| Pooja   |   21 |
| Pranali |   24 |
| Poorva  |   27 |
| Rahul   |   26 |
| Chetann |   26 |
| Deven   |   24 |
| Gaurav  |   23 |
| Radhika |   29 |
| Riya    |   26 |
| Gautam  |   24 |
| Yuvraj  |   30 |
| Pratik  |   21 |
+---------+------+
17 rows in set (0.00 sec)

mysql> select name,age from Student where age>=23;
+---------+------+
| name    | age  |
+---------+------+
| Sagar   |   23 |
| Sumit   |   23 |
| Pranali |   24 |
| Poorva  |   27 |
| Rahul   |   26 |
| Chetann |   26 |
| Deven   |   24 |
| Gaurav  |   23 |
| Radhika |   29 |
| Riya    |   26 |
| Gautam  |   24 |
| Yuvraj  |   30 |
+---------+------+
12 rows in set (0.00 sec)

mysql> select name,age from Student where age>23;
+---------+------+
| name    | age  |
+---------+------+
| Pranali |   24 |
| Poorva  |   27 |
| Rahul   |   26 |
| Chetann |   26 |
| Deven   |   24 |
| Radhika |   29 |
| Riya    |   26 |
| Gautam  |   24 |
| Yuvraj  |   30 |
+---------+------+
9 rows in set (0.00 sec)

mysql> select name ,age from student where age >23 and address="Pune";
+-------+------+
| name  | age  |
+-------+------+
| Rahul |   26 |
+-------+------+
1 row in set (0.00 sec)

mysql> update Student set address='Satara' where rollno=5 and name='pooja';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student order by name;
+--------+---------+------------+------+-------+
| RollNo | Name    | Address    | Age  | Marks |
+--------+---------+------------+------+-------+
|      1 | Amit    | Pune       |   21 |    90 |
|      1 | Amit    | Pune       |   21 |    90 |
|     11 | Bhavesh | Mumbai     |   20 |    98 |
|     12 | Chetann | Nasik      |   26 |    56 |
|     13 | Deven   | Satara     |   24 |    90 |
|     14 | Gaurav  | Dhule      |   23 |    89 |
|     18 | Gautam  | Satara     |   24 |    45 |
|     15 | Hemant  | Mumbai     |   20 |    98 |
|      7 | Parag   | Nagar      |   20 |    57 |
|      4 | Pooja   | Nasik      |   21 |    89 |
|      5 | Pooja   | Satara     |   21 |    89 |
|      8 | Poorva  | Nagpur     |   27 |    67 |
|      6 | Pranali | Nasik      |   24 |    80 |
|     20 | Pratik  | Shirdi     |   21 |    91 |
|     16 | Radhika | Mumbai     |   29 |    67 |
|     10 | Rahul   | Pune       |   26 |    90 |
|      9 | Ramesh  | Pune       |   20 |    78 |
|     17 | Riya    | Sangli     |   26 |    50 |
|      2 | Sagar   | Mumbai     |   23 |    89 |
|      3 | Sumit   | Nasik      |   23 |    78 |
|     19 | Yuvraj  | Aurangabad |   30 |    77 |
+--------+---------+------------+------+-------+
21 rows in set (0.00 sec)

mysql> select * from student where address='Pune' Order by Marks DESc;
+--------+--------+---------+------+-------+
| RollNo | Name   | Address | Age  | Marks |
+--------+--------+---------+------+-------+
|      1 | Amit   | Pune    |   21 |    90 |
|      1 | Amit   | Pune    |   21 |    90 |
|     10 | Rahul  | Pune    |   26 |    90 |
|      9 | Ramesh | Pune    |   20 |    78 |
+--------+--------+---------+------+-------+
4 rows in set (0.00 sec)

mysql> select * from Student where address='Pune' and age>20 order by marks desc;
+--------+-------+---------+------+-------+
| RollNo | Name  | Address | Age  | Marks |
+--------+-------+---------+------+-------+
|      1 | Amit  | Pune    |   21 |    90 |
|      1 | Amit  | Pune    |   21 |    90 |
|     10 | Rahul | Pune    |   26 |    90 |
+--------+-------+---------+------+-------+
3 rows in set (0.00 sec)

mysql> select * from student where name="Yuvarj"
    -> ^C
mysql> select * from student where name="Yuvarj";
Empty set (0.00 sec)

mysql> select distinct address from student;
+------------+
| address    |
+------------+
| Pune       |
| Mumbai     |
| Nasik      |
| Satara     |
| Nagar      |
| Nagpur     |
| Dhule      |
| Sangli     |
| Aurangabad |
| Shirdi     |
+------------+
10 rows in set (0.01 sec)

mysql> select * from Student LIMIT 5;
+--------+-------+---------+------+-------+
| RollNo | Name  | Address | Age  | Marks |
+--------+-------+---------+------+-------+
|      1 | Amit  | Pune    |   21 |    90 |
|      1 | Amit  | Pune    |   21 |    90 |
|      2 | Sagar | Mumbai  |   23 |    89 |
|      3 | Sumit | Nasik   |   23 |    78 |
|      4 | Pooja | Nasik   |   21 |    89 |
+--------+-------+---------+------+-------+
5 rows in set (0.07 sec)

mysql> select MAX(marks) from student;
+------------+
| MAX(marks) |
+------------+
|         98 |
+------------+
1 row in set (0.02 sec)

mysql> select * from student where Name like 'p%';
+--------+---------+---------+------+-------+
| RollNo | Name    | Address | Age  | Marks |
+--------+---------+---------+------+-------+
|      4 | Pooja   | Nasik   |   21 |    89 |
|      5 | Pooja   | Satara  |   21 |    89 |
|      6 | Pranali | Nasik   |   24 |    80 |
|      7 | Parag   | Nagar   |   20 |    57 |
|      8 | Poorva  | Nagpur  |   27 |    67 |
|     20 | Pratik  | Shirdi  |   21 |    91 |
+--------+---------+---------+------+-------+
6 rows in set (0.02 sec)

mysql> select count(Address) from student Group by address;
+----------------+
| count(Address) |
+----------------+
|              4 |
|              4 |
|              4 |
|              3 |
|              1 |
|              1 |
|              1 |
|              1 |
|              1 |
|              1 |
+----------------+
10 rows in set (0.04 sec)

mysql> select address count(Address) from student Group by address;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'count(Address) from student Group by address' at line 1
mysql> select address ,count(Address) from student Group by address;
+------------+----------------+
| address    | count(Address) |
+------------+----------------+
| Pune       |              4 |
| Mumbai     |              4 |
| Nasik      |              4 |
| Satara     |              3 |
| Nagar      |              1 |
| Nagpur     |              1 |
| Dhule      |              1 |
| Sangli     |              1 |
| Aurangabad |              1 |
| Shirdi     |              1 |
+------------+----------------+
10 rows in set (0.02 sec)

mysql> select Address,AVG(marks) from student Group by address;
+------------+------------+
| Address    | AVG(marks) |
+------------+------------+
| Pune       |    87.0000 |
| Mumbai     |    88.0000 |
| Nasik      |    75.7500 |
| Satara     |    74.6667 |
| Nagar      |    57.0000 |
| Nagpur     |    67.0000 |
| Dhule      |    89.0000 |
| Sangli     |    50.0000 |
| Aurangabad |    77.0000 |
| Shirdi     |    91.0000 |
+------------+------------+
10 rows in set (0.01 sec)

mysql> select * from student where name like 'p%' and marks>90;
+--------+--------+---------+------+-------+
| RollNo | Name   | Address | Age  | Marks |
+--------+--------+---------+------+-------+
|     20 | Pratik | Shirdi  |   21 |    91 |
+--------+--------+---------+------+-------+
1 row in set (0.02 sec)

mysql> select address ,count(rollno) from student group by address;
+------------+---------------+
| address    | count(rollno) |
+------------+---------------+
| Pune       |             4 |
| Mumbai     |             4 |
| Nasik      |             4 |
| Satara     |             3 |
| Nagar      |             1 |
| Nagpur     |             1 |
| Dhule      |             1 |
| Sangli     |             1 |
| Aurangabad |             1 |
| Shirdi     |             1 |
+------------+---------------+
10 rows in set (0.00 sec)

mysql> select age,count(rollno)from student group by age;
+------+---------------+
| age  | count(rollno) |
+------+---------------+
|   21 |             5 |
|   23 |             3 |
|   24 |             3 |
|   20 |             4 |
|   27 |             1 |
|   26 |             3 |
|   29 |             1 |
|   30 |             1 |
+------+---------------+
8 rows in set (0.02 sec)


mysql> SELECT COUNT(RollNo), Address FROM Student GROUP BY Address HAVING COUNT(RollNo) > 1;
+---------------+---------+
| COUNT(RollNo) | Address |
+---------------+---------+
|             4 | Pune    |
|             4 | Mumbai  |
|             4 | Nasik   |
|             3 | Satara  |
+---------------+---------+
4 rows in set (0.01 sec)

mysql> SELECT Name
    -> FROM Student
    -> WHERE LENGTH(Name) = 4;
+------+
| Name |
+------+
| Amit |
| Amit |
| Riya |
+------+
3 rows in set (0.01 sec)

mysql> select max(marks) from student group by address;
+------------+
| max(marks) |
+------------+
|         90 |
|         98 |
|         89 |
|         90 |
|         57 |
|         67 |
|         89 |
|         50 |
|         77 |
|         91 |
+------------+
10 rows in set (0.01 sec)

mysql> select min(marks) from student group by address;
+------------+
| min(marks) |
+------------+
|         78 |
|         67 |
|         56 |
|         45 |
|         57 |
|         67 |
|         89 |
|         50 |
|         77 |
|         91 |
+------------+
10 rows in set (0.02 sec)

mysql> select address,min(marks) from student group by address;
+------------+------------+
| address    | min(marks) |
+------------+------------+
| Pune       |         78 |
| Mumbai     |         67 |
| Nasik      |         56 |
| Satara     |         45 |
| Nagar      |         57 |
| Nagpur     |         67 |
| Dhule      |         89 |
| Sangli     |         50 |
| Aurangabad |         77 |
| Shirdi     |         91 |
+------------+------------+
10 rows in set (0.00 sec)

mysql> select Name,Age from student where Age>=25 and age <=30;
+---------+------+
| Name    | Age  |
+---------+------+
| Poorva  |   27 |
| Rahul   |   26 |
| Chetann |   26 |
| Radhika |   29 |
| Riya    |   26 |
| Yuvraj  |   30 |
+---------+------+
6 rows in set (0.00 sec)

mysql> select * from student order by Marks Desc;
+--------+---------+------------+------+-------+
| RollNo | Name    | Address    | Age  | Marks |
+--------+---------+------------+------+-------+
|     11 | Bhavesh | Mumbai     |   20 |    98 |
|     15 | Hemant  | Mumbai     |   20 |    98 |
|     20 | Pratik  | Shirdi     |   21 |    91 |
|      1 | Amit    | Pune       |   21 |    90 |
|      1 | Amit    | Pune       |   21 |    90 |
|     10 | Rahul   | Pune       |   26 |    90 |
|     13 | Deven   | Satara     |   24 |    90 |
|      2 | Sagar   | Mumbai     |   23 |    89 |
|      4 | Pooja   | Nasik      |   21 |    89 |
|      5 | Pooja   | Satara     |   21 |    89 |
|     14 | Gaurav  | Dhule      |   23 |    89 |
|      6 | Pranali | Nasik      |   24 |    80 |
|      3 | Sumit   | Nasik      |   23 |    78 |
|      9 | Ramesh  | Pune       |   20 |    78 |
|     19 | Yuvraj  | Aurangabad |   30 |    77 |
|      8 | Poorva  | Nagpur     |   27 |    67 |
|     16 | Radhika | Mumbai     |   29 |    67 |
|      7 | Parag   | Nagar      |   20 |    57 |
|     12 | Chetann | Nasik      |   26 |    56 |
|     17 | Riya    | Sangli     |   26 |    50 |
|     18 | Gautam  | Satara     |   24 |    45 |
+--------+---------+------------+------+-------+
21 rows in set (0.03 sec)

mysql> update student set marks=marks * 1.15 where name="Pooja";
Query OK, 2 rows affected (0.08 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select name from student where address NOT In ('pune','Mumbai','Nasik');
+--------+
| name   |
+--------+
| Pooja  |
| Parag  |
| Poorva |
| Deven  |
| Gaurav |
| Riya   |
| Gautam |
| Yuvraj |
| Pratik |
+--------+
9 rows in set (0.03 sec)


