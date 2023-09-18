use quan_li_diem_thi;
create table Student(
student_id varchar(20) primary key,
student_name varchar(50),
birthday datetime,
class varchar(20),
gender varchar(20)
);

create table subject_name(
subject_id varchar(20) primary key,
subject_name varchar(50),
teacher_id varchar(20), 
foreign key (teacher_id) references teacher (teacher_id)
);

create table grade(
student_id varchar(20),
subject_id varchar(50),
exam_point int,
exam_date datetime,
primary key (student_id, subject_id),
foreign key (student_id) references student (student_id),
foreign key (subject_id) references subject_name (subject_id)
);

create table teacher(
teacher_id varchar(20) primary key,
teacher_name varchar(50),
phone_number varchar(10)
);
