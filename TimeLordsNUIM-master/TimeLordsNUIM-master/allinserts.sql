-- Some courses first and first difference

INSERT INTO course(	code, trans) VALUES ('MH002', 'B.Ed: Bachelor of Education (Gaeltacht) (MH002)');

INSERT INTO course(	code, trans) VALUES ('MH103', 'Bachelor of Music (MH103)');
  

INSERT INTO course (code, trans ) values ('MH201', 'Bachelor of Science (MH201)');

INSERT INTO course (code, trans ) values ('MHP52', 'HDIP in Irish History 1 (MHP52)');
INSERT INTO course (code, trans ) values ('HDCSC', 'Higher Diploma in Science (Computer Science)');
INSERT INTO course (code, trans, NFQ, CAOPAC ) values ('HDSSDF', 'Higher Diploma in Science (Software Development)', 8, 'MHG70');


-- Now some modules
 /* 

 International ROBOTICS & AUTOMATION CS422 5 1 Not compulsory 
 International ADVANCED CONCEPTS & ISSUES IN COMP.SCI. 1 CS430 5 1 Not compulsory 
Required International DIPLOMA PROJECT CS451 15 1 and 2 Compulsory 
 International COMPUTATION & COMPLEXITY CS370 5 2 Compulsory 
 International PARALLEL & DISTRIBUTED SYSTEMS CS402 5 2 Not compulsory 
 International NUMERICAL COMPUTATION CS417 5 2 Not compulsory 
 International AUDIO & SPEECH PROCESSING CS425 5 2 Not compulsory 
 International COMPUTER GRAPHICS CS426 5 2 Not compulsory 
 International ADVANCED CONCEPTS & ISSUES IN COMP.SCIENCE 2 CS431 5 2 Not compulsory 
 International READINGS IN THE FOUNDATIONS OF COMPUTER SCIENCE CS434 5 2 Not compulsory 
*/
/*--PROGRAMMING LANGUAGES & COMPILERS CS310 5 1 Compulsory */
insert into module (  code ,    trans ,    credits ,	semester ,	compulsory )
values ( 'CS310', 'PROGRAMMING LANGUAGES & COMPILERS', 5, 1, true);

/* --International THEORY OF COMPUTATION CS355 5 1 Compulsory */
insert into module (  code ,    trans ,    credits ,	semester ,	compulsory )
values ( 'CS355', 'THEORY OF COMPUTATION', 5, 1, true);

/* --International PROGRAMMING LANGUAGE DESIGN & SEMANTICS CS424 5 1 Compulsory */
insert into module (  code ,    trans ,    credits ,	semester ,	compulsory )
values ( 'CS424', 'PROGRAMMING LANGUAGE DESIGN & SEMANTICS', 5, 1, true);

/* -- International MACHINE LEARNING & NEURAL NETWORKS CS401 5 1 Not compulsory */
insert into module (  code ,    trans ,    credits ,	semester ,	compulsory )
values ( 'CS401', 'MACHINE LEARNING & NEURAL NETWORKS', 5, 1, false);

--  International ARTIFICIAL INTELLIGENCE & LANGUAGE PROCESSING CS404 5 1 Not compulsory 
insert into module (  code ,    trans ,    credits ,	semester ,	compulsory )
values ( 'CS404', 'ARTIFICIAL INTELLIGENCE & LANGUAGE PROCESSING', 5, 1, false);

--  International COMPUTER VISION CS410 5 1 Not compulsory 
insert into module (  code ,    trans ,    credits ,	semester ,	compulsory )
values ( 'CS410', 'COMPUTER VISION', 5, 1, false);

-- International  CS416 5 1 Not compulsory 
insert into module (  code ,    trans ,    credits ,	semester ,	compulsory )
values ( 'CS416', 'CRYPTOGRAPHY', 5, 1, false);

/*
Open SCIENCE (SOFTWARE DEVELOPMENT) 
SEDF5  Credits: 60 Compulsory: Compulsory  

Module

Code

Credits

Semester

Compulsory
 
 
  STRUCTURED PROGRAMMING CS620C 10 1 Compulsory 
  OBJECT-ORIENTED PROGRAMMING CS627B 10 1 and 2 Compulsory 
 International WEB INFORMATION PROCESSING CS230 5 2 Compulsory 
 International SOFTWARE TESTING. CS265B 5 2 Compulsory 
  SOFTWARE PROJECT CS353C 5 2 Compulsory 
  WORK PLACEMENT PREPARATION CS633 2.5 2 Compulsory */

-- International DATABASES CS130 5 1 Compulsory 
 insert into module (  code ,    trans ,    credits ,	semester ,	compulsory )
values ( 'CS130', 'DATABASES', 5, 1, true);
-- COMPUTER SYSTEMS CS144 2.5 1 Compulsory 
insert into module (  code ,    trans ,    credits ,	semester ,	compulsory )
values ( 'CS144', 'COMPUTER SYSTEMS', 2.5, 1, true);
-- International ALGORITHMS & DATA STRUCTURES 1 CS210 5 1 Compulsory 
insert into module (  code ,    trans ,    credits ,	semester ,	compulsory )
values ( 'CS210', 'ALGORITHMS & DATA STRUCTURES', 5, 1, true);
-- International SOFTWARE DESIGN CS264 5 1 Compulsory 
insert into module (  code ,    trans ,    credits ,	semester ,	compulsory )
values ( 'CS264', 'SOFTWARE DESIGN', 5, 1, true);
-- International MOBILE APPLICATION DEVELOPMENT CS385 5 1 Compulsory
insert into module (  code ,    trans ,    credits ,	semester ,	compulsory )
values ( 'CS385', 'MOBILE APPLICATION DEVELOPMENT', 5, 1, true); 

-- Combine course and module
insert into courseconsistsofmodules (coursecode, modulecode) values ('HDSSDF', 'CS130');
insert into courseconsistsofmodules (coursecode, modulecode) values ('HDSSDF', 'CS144');
insert into courseconsistsofmodules (coursecode, modulecode) values ('HDSSDF', 'CS210');
insert into courseconsistsofmodules (coursecode, modulecode) values ('HDSSDF', 'CS264');
insert into courseconsistsofmodules (coursecode, modulecode) values ('HDSSDF', 'CS385');

insert into courseconsistsofmodules (coursecode, modulecode) values ('HDCSC', 'CS310');
insert into courseconsistsofmodules (coursecode, modulecode) values ('HDCSC', 'CS355');
insert into courseconsistsofmodules (coursecode, modulecode) values ('HDCSC', 'CS424');
insert into courseconsistsofmodules (coursecode, modulecode) values ('HDCSC', 'CS401');
insert into courseconsistsofmodules (coursecode, modulecode) values ('HDCSC', 'CS404');
insert into courseconsistsofmodules (coursecode, modulecode) values ('HDCSC', 'CS410');
insert into courseconsistsofmodules (coursecode, modulecode) values ('HDCSC', 'CS416');


-- Event Type

insert into EventType (code, trans) values ('L', 'Lectures');
insert into EventType (code, trans) values ('E', 'Exams');
insert into EventType (code, trans) values ('B', 'Labs');



-- Event Occurrence

insert into eventOccurrence (code, trans) values ('H' , 'Hourly');
insert into eventOccurrence (code, trans) values ('D' , 'Daily');
insert into eventOccurrence (code, trans) values ('W' , 'Weekly');
insert into eventOccurrence (code, trans) values ('M' , 'Monthly');
insert into eventOccurrence (code, trans) values ('O' , 'Once off');
insert into eventOccurrence (code, trans) values ('A' , 'Annually');

-- 
insert into eventvenue (code, trans) values ('ARTSALT', 'ARTSALT');
insert into eventvenue (code, trans) values ('EOLAS/L2', 'EOLAS/L2');
insert into eventvenue (code, trans) values ('CB/R9', 'CB/R9');
insert into eventvenue (code, trans) values ('EOLAS/L1', 'EOLAS/L1');
insert into eventvenue (code, trans) values ('CB/R6', 'CB/R6');
insert into eventvenue (code, trans) values ('JHL/R1', 'JHL/R1');


-- delete from event;
insert into eventSeed (modulecode, occurrence, type, datetime, venue, durationinmins) values
('CS130', 'W', 'L', '2017-11-27 09:00:00', 'ARTSALT', 60);

insert into eventSeed (modulecode, occurrence, type, datetime, venue, durationinmins) values
('CS144', 'W', 'B', '2017-11-27 11:00:00', 'EOLAS/L2', 120);

insert into eventSeed (modulecode, occurrence, type, datetime, venue, durationinmins) values
('CS210', 'W', 'L', '2017-11-27 14:00:00', 'ARTSALT', 60);

insert into eventSeed (modulecode, occurrence, type, datetime, venue, durationinmins) values
('CS264', 'W', 'L', '2017-11-28 11:00:00', 'CB/R9', 60);

insert into eventSeed (modulecode, occurrence, type, datetime, venue, durationinmins) values
('CS264', 'W', 'B', '2017-11-28 14:00:00', 'EOLAS/L1', 120);

insert into eventSeed (modulecode, occurrence, type, datetime, venue, durationinmins) values
('CS144', 'W', 'L', '2017-11-29 09:00:00', 'CB/R6', 60);

insert into eventSeed (modulecode, occurrence, type, datetime, venue, durationinmins) values
('CS264', 'W', 'L', '2017-11-29 10:00:00', 'CB/R9', 60);

insert into eventSeed (modulecode, occurrence, type, datetime, venue, durationinmins) values
('CS130', 'W', 'B', '2017-11-29 14:00:00', 'EOLAS/L1', 60);

insert into eventSeed (modulecode, occurrence, type, datetime, venue, durationinmins) values
('CS130', 'W', 'L', '2017-11-30 12:00:00', 'JHL/R1', 60);

insert into eventSeed (modulecode, occurrence, type, datetime, venue, durationinmins) values
('CS130', 'W', 'B', '2017-11-30 15:00:00', 'EOLAS/L1', 120);

insert into eventSeed (modulecode, occurrence, type, datetime, venue, durationinmins) values
('CS130', 'W', 'L', '2017-11-30 17:00:00', 'CB/R9', 60);

insert into eventSeed (modulecode, occurrence, type, datetime, venue, durationinmins) values
('CS144', 'W', 'L', '2017-12-01 09:00:00', 'CB/R6', 60);


insert into event select * from eventSeed;

select * from event;

