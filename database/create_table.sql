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
  courseName varchar(200),
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
  courseId varchar(10),
  gradeDK int,
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
  message varchar(150),
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

