Appointments

| id | slot_id | patient_name | doctor_id | deleted_at |
| -- | ------- | ------------ | --------- |   ------   |
| 1  |   11    |     Tasin    |     23    | 2019-10-10 |
| 2  |   12    |     Nawaz    |     22    |     null   |
| 3  |   13    |     Rakib    |     23    |     null   |
| 4  |   14    |     Hossen   |     23    |     null   |
| 5  |   15    |     Aritra   |     24    |     null   |
| 6  |   16    |     Anik     |     22    |     null   |
| 7  |   17    |     Manik    |     22    |     null   |

Doctors 

| id | status  |  doctor_name | 
| -- | ------- | ------------ | 
|  22 |   1    |     Khaled   | 
|  23 |   1    |     Hasan    | 
|  24 |   0    |     Rumi     | 


Slots 

| id  |      date      |   duration   |   time  |
| --  |    ------      | ------------ | ------- |
|  11 |  2019-10-10    |     2900      |  01:01  |
|  12 |  2019-10-11    |     1200    |  02:01  |
|  13 |  2019-10-18    |     1100     |  03:01  |
|  14 |  2019-09-08    |     200     |  11:01  |
|  15 |  2019-08-01    |     500   |  01:31  |
|  16 |  2019-10-07    |     300    |  02:31  |
|  17 |  2019-10-02    |     1200      |  03:31  |


### Output excected:
Follow usual database concepts and use common sense to understand the tables. Feel free to search Google for any syntax help. 
**Solve as many as you can, even if you can only solve 1 query, please submit it.**

Q1. Write a SQL query to fetch ALL appointments on October, 
ordered by slot_date_time in increasing order.

Output format:

| doctor_name  | patient_name |   slot_date_time  | 
|  ----------- | ------------ |   --------------- 
|    X    |    Y     | 2019-10-11 01:01    |
|    P    |    Q     | 2019-10-11 02:01    |
|    N    |    N     | 2019-10-12 00:01    |

Q2. Write a SQL query to fetch the doctor with highest number of appointments

Output format:

| doctor_name  | appointment_count 
|  ----------- | ------------ |
|    X    |    2     |

Q3. Write a SQL query to show list of doctors with their total appointment durations in decreasing order.

Output format:

| doctor_name  | total_duration 
|  ----------- | ------------ |
|    X    |    2000     |
|    Y    |    1200     |


