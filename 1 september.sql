use microsoft
select * from employee
--after trigger
create trigger trig_up on employee
after update
as begin 
print 'you have successfully updated the table employee'
end

update employee set salary = 80000 where id = 1

create trigger trig_ins on employee
after insert
as begin
print 'You have successfully inserted in your table'
end

insert into employee values(32,'Nipun',40,'Male',78000,'Marketing',
'Pune','India')

drop trigger trig_ins
drop trigger trig_up

create trigger trig_delete on employee
after delete
as begin
print 'Congratulation you have successfully deleted from employee'
end

delete from employee where id = 10

--instead of trigger
create trigger trig_instead on employee
instead of update
as begin
print 'you do not have permission to update data'
end
drop trigger trig_instead
update employee set city = 'pune' where id = 1

alter table employee disable trigger trig_instead

update employee set city = 'pune' where id = 1

alter table employee enable trigger trig_instead

create trigger detele_insert on employee
instead of delete, insert
as begin
print 'you cannot delet or inserrt any command'
end
drop trigger delete_insert
delete from employee where id = 5

drop trigger detele_insert