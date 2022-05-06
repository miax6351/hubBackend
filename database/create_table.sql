CREATE TABLE student (
  id varchar(50) PRIMARY KEY,
  firstName varchar(50),
  lastName varchar(50),
  mail varchar(50),
  studyclassId varchar(50),
  token varchar(1300)
);

CREATE TABLE instructor (
  id varchar(50) PRIMARY KEY,
  firstName varchar(50),
  lastName varchar(50),
  mail varchar(50),
  phone varchar(50)
);


CREATE TABLE course (
  id varchar(10) PRIMARY KEY,
  courseName varchar(50),
  courseDescription varchar(100),
  ects varchar(50),
  instructorId varchar(50),
  FOREIGN KEY (instructorId) REFERENCES instructor (id)
);

CREATE TABLE grades (
  gradeDK int PRIMARY KEY,
  gradeIn varchar(50)
);

CREATE TABLE grade (
  studentId varchar(50),
  gradeDK int,
  courseId varchar(10),
  PRIMARY KEY (studentId, gradeDK, courseId),
  FOREIGN KEY (studentId) REFERENCES student(id),
  FOREIGN KEY (gradeDK) REFERENCES grades (gradeDK),
  FOREIGN KEY (courseId) REFERENCES course (id)
);


CREATE TABLE studentCourses (
  studentId varchar(50),
  courseId varchar(10),
  PRIMARY KEY (studentId, courseId),
  FOREIGN KEY (studentId) REFERENCES student (id),
  FOREIGN KEY (courseId) REFERENCES course (id)
);

CREATE TABLE location (
  buildingName varchar(50),
  roomNumber int,
  PRIMARY KEY (buildingName, roomNumber)
);


CREATE TABLE lesson (
  courseId varchar(10),
  weekNo int,
  locationBuilding varchar(50),
  locationRoom int,
  PRIMARY KEY (courseId, weekNo),
  FOREIGN KEY (courseId) REFERENCES course (id),
  FOREIGN KEY (locationBuilding, locationRoom) REFERENCES location (buildingName, roomNumber)
);

CREATE TABLE studyprogramme (
  programmeId varchar(50) PRIMARY KEY,
  programmeName varchar(50)
);

CREATE TABLE studyclass (
  id varchar(50) PRIMARY KEY,
  semester varchar(50),
  programmeId varchar(50),
  FOREIGN KEY (programmeId) REFERENCES studyprogramme (programmeId),
  FOREIGN KEY (id) REFERENCES student (id)
);


CREATE TABLE assignment (
  id int,
  courseId varchar(10),
  fileURL varchar(50),
  openDate timestamp,
  dueDate timestamp,
  PRIMARY KEY (id, courseId),
  FOREIGN KEY (courseId) REFERENCES course (id)
);

CREATE TABLE announcement (
  studentId varchar(50),
  id int AUTO_INCREMENT,
  title varchar(50),
  message varchar(50),
  sender varchar(50),
  isRead boolean,
  PRIMARY KEY (studentId, id),
  FOREIGN KEY (studentId) REFERENCES student (id)
) ENGINE=MyISAM;

CREATE TABLE appointment (
  studentId varchar(50),
  appointmentId int AUTO_INCREMENT,
  startDate date,
  endDate date,
  title varchar(50),
  courseId varchar(10),
  PRIMARY KEY (studentId, appointmentId),
  FOREIGN KEY (studentId) REFERENCES student (id),
  FOREIGN KEY (courseId) REFERENCES lesson (courseId)
) ENGINE=MyISAM;

CREATE TABLE lessonplan (
  studentId varchar(50),
  course varchar(50),
  weekNo int,
  date date,
  topic varchar(50),
  learningObjectives varchar(100),
  litterature varchar(50),
  pages int,
  PRIMARY KEY (studentId, course, weekNo),
  FOREIGN KEY (studentId) REFERENCES student (id)
);


/*student*/
INSERT INTO student VALUES ('s205353', 'Mia', 'Dong', 's205353@student.dtu.dk', 'D.IT�', '');
INSERT INTO student VALUES ('s205336', 'Daniel', 'Diamant', 's205336@student.dtu.dk', 'D.IT�'. '');
INSERT INTO student VALUES ('s205339', 'Pelle', 'Andersen', 's205339@student.dtu.dk', 'D.IT�'. '');
INSERT INTO student VALUES ('s205345', 'Sebastian', 'Sinding', 's205345@student.dtu.dk', 'D.IT�', '');
INSERT INTO student VALUES ('s205456', 'Steven', 'Pedersen', 's205456@student.dtu.dk', 'D.SWT', '');

/*instructor*/
INSERT INTO instructor VALUES ('bhsi', 'Bhupjit', 'Sing', 'bhsi@dtu.dk', 25252525);

/*course*/
INSERT INTO course VALUES ('010101', 'Backend Development', 'Best course ever', 5, 'bhsi');
INSERT INTO course VALUES ('11112', 'UML', 'Learning objective: to make diagrams with UML notation', 5, 'bhsi');

/*grades & grade*/

INSERT INTO grades VALUES (12, 'A');
INSERT INTO grade VALUES ('s205339', 12, '11112');

/*studentCourses*/
INSERT INTO studentCourses VALUES ('s205339', '11112');
INSERT INTO studentCourses VALUES ('s205339', '010101');

/*location*/
INSERT INTO location VALUES ('B358', 70);
INSERT INTO location VALUES ('B358', 60);
INSERT INTO location VALUES ('B358', 50);
INSERT INTO location VALUES ('B358', 40);

/*lesson*/
INSERT INTO lesson VALUES ('11112', 1, 'B358',70);
INSERT INTO lesson VALUES ('11112', 2, 'B358',70);
INSERT INTO lesson VALUES ('11112', 3, 'B358',70);
INSERT INTO lesson VALUES ('11112', 4, 'B358',70);

/*studyprogramme*/
INSERT INTO studyprogramme VALUES ('D.IT�', 'D. IT og �konomi');
INSERT INTO studyprogramme VALUES ('D.SWT', 'D. Softwareteknologi');

/*studyclass*/
INSERT INTO studyclass VALUES ('s205353', 2020, 'D.SWT');
INSERT INTO studyclass VALUES ('s205336', 2020, 'D.IT�');

/*assignments*/
INSERT INTO assignment VALUES (1, '11112', 'https://www.google.com', CURDATE(), CURDATE());

/*announcement*/
INSERT INTO announcement VALUES ('s205353', null, 'Dartmouth Exchange Application', 'Remember to fill out your application form before the 21st of April', 'Jeppe Duus', false);
INSERT INTO announcement VALUES ('s205353', null, 'Hegnet har f�dselsdag!!', '*Stakittet fylder rundt og i den anledning inviteres der til �l og fest fra kl 8-03 fredag d. 8. april', 'Hegnet', false);
INSERT INTO announcement VALUES ('s205339', null, 'Hegnet har f�dselsdag!!', '*Stakittet fylder rundt og i den anledning inviteres der til �l og fest fra kl 8-03 fredag d. 8. april', 'Hegnet', false);



/*appointment*/
INSERT INTO appointment VALUES ('s205353', null, CURDATE(), CURDATE(),'Dentists appointment',  null);
INSERT INTO appointment VALUES ('s205353', null, CURDATE(), CURDATE(),'Backend Development', '010101');
INSERT INTO appointment VALUES ('s205339', null, CURDATE(), CURDATE(),'Backend Development', '010101');

select* from appointment;
select* from announcement;

/*create database studenthub;
use studenthub;*/


CREATE TABLE lessonplan (
  studentId varchar(50),
  course varchar(50),
  weekNo int,
  date date,
  topic varchar(50),
  learningObjectives varchar(50),
  litterature varchar(50),
  pages int,
  PRIMARY KEY (studentId, course, weekNo),
  FOREIGN KEY (studentId) REFERENCES student (id)
);


CREATE TABLE lessonplan (
  studentId varchar(50),
  course varchar(50),
  weekNo int,
  date date,
  topic varchar(50),
  learningObjectives varchar(100),
  litterature varchar(50),
  pages int,
  PRIMARY KEY (studentId, course, weekNo),
  FOREIGN KEY (studentId) REFERENCES student (id)
);