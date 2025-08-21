-- temp table
use microsoft

create table #School
(sid int,name varchar(255), makrs int, sports varchar(255))

select * from #school

insert into #school values(1,'Mark',89,'soccer'),(2,'john',91,'baseball'),
(3,'james',80,'basketball')

/* 
All the tables starting with # symbol are temp tables. 
These tables are stored in System databases in Tempdb in Temporary Tables folder. 
These tables are automatically dropped if we close the session. 
*/
