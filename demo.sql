create database student_examination_sys;

create table student(
	 id int(5) primary key not null,
     name varchar(10),
     age int(3),
     sex varchar(6)
);

INSERT INTO student VALUES (001,"张三",18,"男");
INSERT INTO student VALUES (002,"李四",20,"女");

create table subject(
	 id int(5) primary key not null,
     subject varchar(10),
     teacher varchar(10),
     description varchar(20)
);

INSERT INTO subject VALUES (1001,"语文","王老师","本次考试比较简单");
INSERT INTO subject VALUES (1002,"数学","刘老师","本次考试比较难");

create table score(
	 id int(5) primary key not null,
     student_id int(5),
     subject_id int(5),
     score int(5),
     constraint fk_score_stu foreign key(student_id) references student(id),
     constraint fk_score_sub foreign key(subject_id) references subject(id)
);

INSERT INTO score VALUES (1,001,1001,80);
INSERT INTO score VALUES (2,002,1002,60);
INSERT INTO score VALUES (3,001,1001,70);
INSERT INTO score VALUES (4,002,1002,60.5);