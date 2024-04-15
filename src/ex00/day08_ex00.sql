START TRANSACTION;
--session 1
select * from pizzeria where name  = 'Pizza Hut';

UPDATE pizzeria SET rating = 5
WHERE id = 1;
COMMIT;

--session 2
select * from pizzeria where name  = 'Pizza Hut';