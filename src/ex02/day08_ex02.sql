--session 1
START TRANSACTION;
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
select * from pizzeria where name  = 'Pizza Hut';
UPDATE pizzeria SET rating = 4 WHERE id = 1;
COMMIT;
select * from pizzeria where name  = 'Pizza Hut';

--session 2
START TRANSACTION;
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
select * from pizzeria where name  = 'Pizza Hut';
UPDATE pizzeria SET rating = 3.6 WHERE id = 1;
COMMIT;
select * from pizzeria where name  = 'Pizza Hut';