# README


Mysql queries

mysql> select posts.id as Post_id, posts.title as Title, COUNT(comments.id) as Comments_Count from users inner join posts on users.id = posts.user_id inner join comments on posts.id = comments.post_id group by users.id, posts.id order by Comments_Count desc;
+---------+-----------+----------------+
| Post_id | Title     | Comments_Count |
+---------+-----------+----------------+
|      18 | Nice post |              5 |
|      11 | Lorem     |              4 |
|      17 | Good post |              2 |
|      12 | Lorem     |              1 |
+---------+-----------+----------------+
4 rows in set (0.00 sec)

mysql> SELECT users.id as User_Id, COUNT(comments.id) Comments_Count FROM `users` INNER JOIN `comments` ON `comments`.`user_id` = `users`.`id` GROUP BY users.id ORDER BY Comments_Count DESC;
+---------+----------------+
| User_Id | Comments_Count |
+---------+----------------+
|       1 |             11 |
|       2 |              7 |
+---------+----------------+
2 rows in set (0.00 sec)


