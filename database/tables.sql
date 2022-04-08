CREATE TABLE student (
  id varchar(255) PRIMARY KEY,
  firstName varchar(255),
  lastName varchar(255),
  mail varchar(255),
  studyclassId varchar(255)
);

CREATE TABLE instructor (
  id varchar(255) PRIMARY KEY,
  firstName varchar(255),
  lastName varchar(255),
  mail varchar(255),
  phone varchar(255)
);


CREATE TABLE course (
  id int PRIMARY KEY,
  courseName varchar(255),
  courseDescription varchar(255),
  ects varchar(255),
  instructorId varchar(255),
  FOREIGN KEY (instructorId) REFERENCES instructor (id)
);

CREATE TABLE grades (
  gradeDK int PRIMARY KEY,
  gradeIn varchar(255)
);

CREATE TABLE grade (
  studentId varchar(255),
  gradeDK int,
  courseId int,
  PRIMARY KEY (studentId, gradeDK, courseId),
  FOREIGN KEY (studentId) REFERENCES student(id),
  FOREIGN KEY (gradeDK) REFERENCES grades (gradeDK),
  FOREIGN KEY (courseId) REFERENCES course (id)
);


CREATE TABLE studentCourses (
  studentId varchar(255),
  courseId int,
  PRIMARY KEY (studentId, courseId),
  FOREIGN KEY (studentId) REFERENCES student (id),
  FOREIGN KEY (courseId) REFERENCES course (id)
);

CREATE TABLE location (
  buildingName varchar(255),
  roomNumber int,
  PRIMARY KEY (buildingName, roomNumber)
);


CREATE TABLE lesson (
  courseId int,
  weekNo int,
  locationBuilding varchar(255),
  locationRoom int,
  PRIMARY KEY (courseId, weekNo),
  FOREIGN KEY (courseId) REFERENCES course (id),
  FOREIGN KEY (locationBuilding, locationRoom) REFERENCES location (buildingName, roomNumber)
);

CREATE TABLE studyprogramme (
  programmeId varchar(255) PRIMARY KEY,
  programmeName varchar(255)
);

CREATE TABLE studyclass (
  id varchar(255) PRIMARY KEY,
  semester varchar(255),
  programmeId varchar(255),
  FOREIGN KEY (programmeId) REFERENCES studyprogramme (programmeId),
  FOREIGN KEY (id) REFERENCES student (id)
);





CREATE TABLE assignment (
  id int,
  courseId int,
  fileURL varchar(255),
  openDate timestamp,
  dueDate timestamp,
  PRIMARY KEY (id, courseId),
  FOREIGN KEY (courseId) REFERENCES course (id)
);

CREATE TABLE announcement (
  studentId varchar(255),
  id int AUTO_INCREMENT,
  title varchar(255),
  message varchar(255),
  sender varchar(255),
  isRead boolean,
  PRIMARY KEY (studentId, id),
  FOREIGN KEY (studentId) REFERENCES student (id)
) ENGINE=MyISAM;

CREATE TABLE appointment (
  studentId varchar(255),
  appointmentId int AUTO_INCREMENT,
  startDate date,
  endDate date,
  title varchar(255),
  courseId int,
  PRIMARY KEY (studentId, appointmentId),
  FOREIGN KEY (studentId) REFERENCES student (id),
  FOREIGN KEY (courseId) REFERENCES lesson (courseId)
) ENGINE=MyISAM;
