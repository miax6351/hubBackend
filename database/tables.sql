CREATE TABLE student (
  id varchar(25) PRIMARY KEY,
  firstName varchar(25),
  lastName varchar(25),
  mail varchar(25),
  studyclassId varchar(25)
);

CREATE TABLE instructor (
  id varchar(25) PRIMARY KEY,
  firstName varchar(25),
  lastName varchar(25),
  mail varchar(25),
  phone varchar(10)
);


CREATE TABLE course (
  id int PRIMARY KEY,
  courseName varchar(25),
  courseDescription varchar(25),
  ects varchar(25),
  instructorId varchar(25),
  FOREIGN KEY (instructorId) REFERENCES instructor (id)
);

CREATE TABLE grades (
  gradeDK int PRIMARY KEY,
  gradeIn varchar(25)
);

CREATE TABLE grade (
  studentId varchar(25),
  gradeDK int,
  courseId int,
  PRIMARY KEY (studentId, gradeDK, courseId),
  FOREIGN KEY (studentId) REFERENCES student(id),
  FOREIGN KEY (gradeDK) REFERENCES grades (gradeDK),
  FOREIGN KEY (courseId) REFERENCES course (id)
);


CREATE TABLE studentCourses (
  studentId varchar(25),
  courseId int,
  PRIMARY KEY (studentId, courseId),
  FOREIGN KEY (studentId) REFERENCES student (id),
  FOREIGN KEY (courseId) REFERENCES course (id)
);

CREATE TABLE location (
  buildingName varchar(25),
  roomNumber int,
  PRIMARY KEY (buildingName, roomNumber)
);


CREATE TABLE lesson (
  courseId int,
  weekNo int,
  locationBuilding varchar(25),
  locationRoom int,
  PRIMARY KEY (courseId, weekNo),
  FOREIGN KEY (courseId) REFERENCES course (id),
  FOREIGN KEY (locationBuilding, locationRoom) REFERENCES location (buildingName, roomNumber)
);

CREATE TABLE studyprogramme (
  programmeId varchar(25) PRIMARY KEY,
  programmeName varchar(25)
);

CREATE TABLE studyclass (
  id varchar(25) PRIMARY KEY,
  semester varchar(25),
  programmeId varchar(25),
  FOREIGN KEY (programmeId) REFERENCES studyprogramme (programmeId),
  FOREIGN KEY (id) REFERENCES student (id)
);





CREATE TABLE assignment (
  id int,
  courseId int,
  fileURL varchar(25),
  openDate timestamp,
  dueDate timestamp,
  PRIMARY KEY (id, courseId),
  FOREIGN KEY (courseId) REFERENCES course (id)
);

CREATE TABLE announcement (
  studentId varchar(25),
  id int AUTO_INCREMENT,
  title varchar(25),
  message varchar(25),
  sender varchar(25),
  isRead boolean,
  PRIMARY KEY (studentId, id),
  FOREIGN KEY (studentId) REFERENCES student (id)
) ENGINE=MyISAM;

CREATE TABLE appointment (
  studentId varchar(25),
  appointmentId int AUTO_INCREMENT,
  startDate date,
  endDate date,
  title varchar(25),
  courseId int,
  PRIMARY KEY (studentId, appointmentId),
  FOREIGN KEY (studentId) REFERENCES student (id),
  FOREIGN KEY (courseId) REFERENCES lesson (courseId)
) ENGINE=MyISAM;

CREATE TABLE lessonplan (
  studentId varchar(25),
  course varchar(25),
  weekNo int,
  date date,
  topic varchar(25),
  learningObjectives varchar(25),
  litterature varchar(25),
  pages int,
  PRIMARY KEY (studentId, course, weekNo),
  FOREIGN KEY (studentId) REFERENCES student (id)
);