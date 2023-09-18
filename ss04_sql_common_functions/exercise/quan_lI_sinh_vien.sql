CREATE DATABASE quan_li_sinh_vien_ss04;
USE quan_li_sinh_vien_ss04;
CREATE TABLE class(
class_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
class_name VARCHAR(60) NOT NULL,
start_date DATETIME NOT NULL,
status BIT
);

CREATE TABLE student(
student_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
student_name VARCHAR(30) NOT NULL,
address VARCHAR(50) ,
phone VARCHAR(20),
status BIT,
class_id INT NOT NULL,
FOREIGN KEY (class_id) REFERENCES class (class_id)
);

CREATE TABLE subject (
subject_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
subject_name VARCHAR(30) NOT NULL,
credit TINYINT NOT NULL DEFAULT 1 CHECK (credit >= 1), 
status BIT DEFAULT 1
);

CREATE TABLE mark(
mark_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
subject_id INT NOT NULL ,
student_id INT NOT NULL ,
mark FLOAT DEFAULT 0 CHECK( mark BETWEEN 0 AND 100),
exam_times TINYINT DEFAULT 1,
UNIQUE (subject_id, student_id),
FOREIGN KEY (subject_id) REFERENCES subject (subject_id),
FOREIGN KEY (student_id) REFERENCES student (student_id)
);

INSERT INTO class
VALUES (1, 'A1', '2008-12-20', 1);
INSERT INTO class
VALUES (2, 'A2', '2008-12-22', 1);
INSERT INTO class
VALUES (3, 'B3', CURRENT_DATE, 0);

INSERT INTO student (student_name, address, phone, status, class_id)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO student (student_name, address, status, class_id)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO student (student_name, address, phone, status, class_id)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO subject
VALUES (1, 'CF', 5, 1),
 (2, 'C', 6, 1),
 (3, 'HDJ', 5, 1),
 (4, 'RDBMS', 10, 1);
 
INSERT INTO mark (subject_id, student_id, mark, exam_times)
VALUES (1, 1, 8, 1),
 (1, 2, 10, 2),
 (2, 1, 12, 1);
 
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT * 
FROM subject 
WHERE credit = (SELECT max(credit) FROM subject );

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT s.subject_name, m.mark 
FROM subject s
JOIN mark m ON s.subject_id = m.subject_id
WHERE m.mark = (SELECT max(mark) FROM mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT s.student_name, avg(mark) AS average_mark
FROM student s
JOIN mark m ON s.student_id = m.student_id
GROUP BY s.student_id
ORDER BY average_mark desc;