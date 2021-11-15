use suba;
create table student (
	SNO INT(5) primary key auto_increment,
    student_name nvarchar(15),
    mark int(10)
    );
    ALTER TABLE student auto_increment= 100;
INSERT into student (SNO,student_name,mark) values(1,'abi',99);
INSERT into student (SNO,student_name,mark) values(2,'menu',99);
INSERT into student (SNO,student_name,mark) values(3,'kalai',100);
INSERT into student (SNO,student_name,mark) values(4,'vetti',19);
INSERT into student (SNO,student_name,mark) values(5,'venu',79);
INSERT into student (SNO,student_name,mark) values(6,'suba',89);
INSERT into student (SNO,student_name,mark) values(7,'mangai',9);
INSERT into student (student_name,mark) values('thanam',69);
delete from student where SID;
drop table student;
select * from student;
