-- transaction - set autocommit=0
SET autocommit=0;

-- transaction - insert
START TRANSACTION;
insert into employees values (1703, 'Ramadhan', 'Andhika', 'x7000', 'andhika@gmail.com', 1, 1002, 'VP');
commit;

-- transaction - rollback
start transaction;
rollback;

-- transaction - savepoint
insert into employees values (1708, 'Lionel', 'Messi', 'x7000', 'messi@gmail.com', 1, 1002, 'VP');
savepoint my_savepoint;
insert into employees values (1709, 'CR', 'Seven', 'x7000', 'cr7@gmail.com', 1, 1002, 'VP');
rollback to savepoint my_savepoint;



