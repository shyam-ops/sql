use microsoft

--Transaction in sql

update Employee set age = 32 where name = 'Amit'
update employee set department = 'Accounts' where name = 'Anjali'
update employee set city = 'Banglore' where name = 'Sonal'
update employee set salary = 40000/0 where name = 'Puneet'

begin try
begin transaction
update employee set age = 51 where name = 'Rohan'
update employee set department = 'HR' where name = 'Sherry'
update employee set city = 'Pune' where name = 'Rahul'
update employee set salary = 90000 where name = 'Riya'
print 'transaction  commited'
end
try begin catch
rollback transaction
print 'Transaction Rollback'
end catch

--stuff function (combination of substring and replace)
select stuff ('This is python class',9,6,'SQL')
