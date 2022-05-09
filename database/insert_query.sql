/*student*/
INSERT INTO student VALUES ('s205353', 'Mia', 'Dong', 's205353@student.dtu.dk', 'D.ITØ', '');
INSERT INTO student VALUES ('s205336', 'Daniel', 'Diamant', 's205336@student.dtu.dk', 'D.ITØ', '');
INSERT INTO student VALUES ('s205339', 'Pelle', 'Andersen', 's205339@student.dtu.dk', 'D.ITØ', '');
INSERT INTO student VALUES ('s205345', 'Sebastian', 'Sinding', 's205345@student.dtu.dk', 'D.ITØ', '');
INSERT INTO student VALUES ('s205456', 'Steven', 'Pedersen', 's205456@student.dtu.dk', 'D.SWT', '');

/*instructor*/
INSERT INTO instructor VALUES ('bhsi', 'Bhupjit', 'Sing', 'bhsi@dtu.dk', 25252525);
INSERT INTO instructor VALUES ('iabr', 'Ian', 'Bridgwood', 'iabr@dtu.dk', 35885144);
INSERT INTO instructor VALUES ('dkru', 'Daniel', 'Rubin-Grøn', 'dkrug@dtu.dk', 21810979);
INSERT INTO instructor VALUES ('bhch', 'Bo', 'Holst-Christensen', 'bhch@dtu.dk', 35885113);


/*grades & grade*/
INSERT INTO grades VALUES (12, 'A');
INSERT INTO grades VALUES (10, 'B');
INSERT INTO grades VALUES (07, 'C');
INSERT INTO grades VALUES (04, 'D');
INSERT INTO grades VALUES (02, 'E');
INSERT INTO grades VALUES (00, 'Fx');
INSERT INTO grades VALUES (-03, 'F');

INSERT INTO course VALUES ('02314', 'Introductory Programming', 'Fall 20', 5, 'iabr');
INSERT INTO course VALUES ('62532', 'Version control and test methods', 'Fall 20', 5, 'dkru');
INSERT INTO course VALUES ('62531', 'Development Methods for IT Systems', 'Fall 20', 5, 'iabr');
INSERT INTO course VALUES ('62597', 'Backend development, operations and distributed Systems', 'Spring 22', 5, 'bhch');
INSERT INTO course VALUES ('02223', 'Model-Based Systems Engineering', 'Spring 21', 5, 'bhsi');
INSERT INTO course VALUES ('02160', 'Agile Object-oriented Software Development', 'Fall 21', 5, 'drgb');
INSERT INTO course VALUES ('02369', 'Software Processes and Patterns', 'Learning objective: to make diagrams with UML notation', 5, 'bhsi');
INSERT INTO course VALUES ('62434', 'IT Project Management', 'Learning objective: to make diagrams with UML notation', 5, 'bhsi');
INSERT INTO course VALUES ('62597', 'Backend development, operations and distributed Systems', 'Spring 22', 5, 'bhch');
INSERT INTO course VALUES ('02223', 'Model-Based Systems Engineering', 'Spring 21', 5, 'bhsi');
INSERT INTO course VALUES ('02160', 'Agile Object-oriented Software Development', 'Fall 21', 5, 'drgb');
INSERT INTO course VALUES ('02369', 'Software Processes and Patterns', 'Learning objective: to make diagrams with UML notation', 5, 'bhsi');
INSERT INTO course VALUES ('62434', 'IT Project Management', 'Learning objective: to make diagrams with UML notation', 5, 'bhsi');

INSERT INTO grade VALUES ('s205353','02314', 12);
INSERT INTO grade VALUES ('s205353', '62532', 12);
INSERT INTO grade VALUES ('s205353','62531', 12);
INSERT INTO grade VALUES ('s205353', '62597', 12);
INSERT INTO grade VALUES ('s205353','02223', 12, );
INSERT INTO grade VALUES ('s205353', '02223', 12);
INSERT INTO grade VALUES ('s205353', '02369', 12);
INSERT INTO grade VALUES ('s205353', '62434', 12 );

INSERT INTO grade VALUES ('s205336', '02314', 12);
INSERT INTO grade VALUES ('s205336','62532', 12);
INSERT INTO grade VALUES ('s205336', '62531', 12);
INSERT INTO grade VALUES ('s205336', '62597', 12);
INSERT INTO grade VALUES ('s205336', '02223', 12);
INSERT INTO grade VALUES ('s205336', '02160', 12);
INSERT INTO grade VALUES ('s205336', '02369', 12);
INSERT INTO grade VALUES ('s205336', '62434', 12);
                                   ,        , 
INSERT INTO grade VALUES ('s205339', '02314', 12);
INSERT INTO grade VALUES ('s205339', '62532', 12);
INSERT INTO grade VALUES ('s205339', '62531', 12);
INSERT INTO grade VALUES ('s205339', '62597', 12);
INSERT INTO grade VALUES ('s205339', '02223', 12);
INSERT INTO grade VALUES ('s205339', '02160', 12);
INSERT INTO grade VALUES ('s205339', '02369', 12);
INSERT INTO grade VALUES ('s205339', '62434', 12);
                                   ,        , 
INSERT INTO grade VALUES ('s205345', '02314', 12);
INSERT INTO grade VALUES ('s205345', '62532', 12);
INSERT INTO grade VALUES ('s205345', '62531', 12);
INSERT INTO grade VALUES ('s205345', '62597', 12);
INSERT INTO grade VALUES ('s205345', '02223', 12);
INSERT INTO grade VALUES ('s205345', '02160', 12);
INSERT INTO grade VALUES ('s205345', '02369', 12);
INSERT INTO grade VALUES ('s205345', '62434', 12);
                                   ,        , 
INSERT INTO grade VALUES ('s205456', '02314', 12);
INSERT INTO grade VALUES ('s205456', '62532', 12);
INSERT INTO grade VALUES ('s205456', '62531', 12);
INSERT INTO grade VALUES ('s205456', '62597', 12);
INSERT INTO grade VALUES ('s205456', '02223', 12);
INSERT INTO grade VALUES ('s205456', '02160', 12);
INSERT INTO grade VALUES ('s205456', '02369', 12);
INSERT INTO grade VALUES ('s205456', '62434', 12);

/*location*/
INSERT INTO location VALUES ('358', 70);
INSERT INTO location VALUES ('303A', 42);
INSERT INTO location VALUES ('V1.01', 50);
INSERT INTO location VALUES ('X1.20', 40);

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
INSERT INTO lessonplan VALUES ('s205353', 'Backend Development', 1, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Backend Development', 2, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Backend Development', 3, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Backend Development', 4, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Backend Development', 5, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s205353', 'Backend Development', 6, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s010101', 'Backend Development', 1, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s010101', 'Backend Development', 2, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s010101', 'Backend Development', 3, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s010101', 'Backend Development', 4, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s010101', 'Backend Development', 5, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
INSERT INTO lessonplan VALUES ('s010101', 'Backend Development', 6, CURDATE(), 'Components',' How to use components', 'chapter 3-4', 28);
