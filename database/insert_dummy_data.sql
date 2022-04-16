
/*student*/
INSERT INTO student VALUES ('s205353', 'Mia', 'Dong', 's205353@student.dtu.dk', 'D.ITØ');
INSERT INTO student VALUES ('s205336', 'Daniel', 'Diamant', 's205336@student.dtu.dk', 'D.ITØ');
INSERT INTO student VALUES ('s205339', 'Pelle', 'Andersen', 's205339@student.dtu.dk', 'D.ITØ');
INSERT INTO student VALUES ('s205345', 'Sebastian', 'Sinding', 's205345@student.dtu.dk', 'D.ITØ');
INSERT INTO student VALUES ('s205456', 'Steven', 'Pedersen', 's205456@student.dtu.dk', 'D.SWT');

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
INSERT INTO studyprogramme VALUES ('D.ITØ', 'D. IT og Økonomi');
INSERT INTO studyprogramme VALUES ('D.SWT', 'D. Softwareteknologi');

/*studyclass*/
INSERT INTO studyclass VALUES ('s205353', 2020, 'D.SWT');
INSERT INTO studyclass VALUES ('s205336', 2020, 'D.ITØ');

/*assignments*/
INSERT INTO assignment VALUES (1, '11112', 'https://www.google.com', CURDATE(), CURDATE());

/*announcement*/
INSERT INTO announcement VALUES ('s205353', null, 'Dartmouth Exchange Application', 'Remember to fill out your application form before the 21st of April', 'Jeppe Duus', false);
INSERT INTO announcement VALUES ('s205353', null, 'Hegnet har fødselsdag!!', '*Stakittet fylder rundt og i den anledning inviteres der til øl og fest fra kl 8-03 fredag d. 8. april', 'Hegnet', false);
INSERT INTO announcement VALUES ('s205339', null, 'Hegnet har fødselsdag!!', '*Stakittet fylder rundt og i den anledning inviteres der til øl og fest fra kl 8-03 fredag d. 8. april', 'Hegnet', false);



/*appointment*/
INSERT INTO appointment VALUES ('s205353', null, CURDATE(), CURDATE(),'Dentists appointment',  null);
INSERT INTO appointment VALUES ('s205353', null, CURDATE(), CURDATE(),'Backend Development', '010101');
INSERT INTO appointment VALUES ('s205339', null, CURDATE(), CURDATE(),'Backend Development', '010101');

/*lessonplan*/
INSERT INTO lessonplan VALUES ('s205353', 'Frontend Development', 1, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Frontend Development', 2, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Frontend Development', 3, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Frontend Development', 4, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Frontend Development', 5, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Frontend Development', 6, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Frontend Development', 7, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Frontend Development', 8, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Frontend Development', 9, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Frontend Development', 10, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Frontend Development', 11, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Frontend Development', 12, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Frontend Development', 13, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);