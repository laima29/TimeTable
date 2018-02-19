/*
	Timetable database for Mobile Application Development project.
	Timelords
	timelord.sql
	T.Conor Kerrigan
	26/11/2017
*/

DROP TABLE if exists course cascade;


CREATE TABLE course (
    code character varying(8) NOT NULL,
    trans character varying(64) NOT NULL,
    NFQ character varying(32) ,
    CAOPAC character varying(8) ,
    CONSTRAINT CPK PRIMARY KEY (code)
);

/*
COMMENT ON TABLE Course
 IS 'Course/Qualification that a student is persuing at the University. ex. B.Sc. , H.Dip, M.Sc. ...';
*/

DROP TABLE if exists Module cascade;

CREATE TABLE Module
(
    code character varying(8) NOT NULL,
    trans character varying(64)NOT NULL,
     credits int,
	semester int,
	compulsory boolean,
    CONSTRAINT MPK PRIMARY KEY (code)
);

/*
COMMENT ON TABLE Module
    IS 'one of a number of specialised subjects for a given course. e.x. CS210 Data Structures and Algorithms';
*/

drop table if exists courseconsistsofmodules;

CREATE TABLE courseconsistsofmodules
(
    coursecode varchar(8) NOT NULL,
    modulecode varchar(8) NOT NULL,
    CONSTRAINT courseconsistsofmodulespk PRIMARY KEY (coursecode, modulecode),
    CONSTRAINT modulefk FOREIGN KEY (modulecode)
        REFERENCES module (code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT coursefk FOREIGN KEY (coursecode)
        REFERENCES course (code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


DROP TABLE if exists EventType;

CREATE TABLE EventType
(
    code character varying(8)  NOT NULL,
    trans character varying(8)  NOT NULL,
    CONSTRAINT ETPK PRIMARY KEY (code)
);

/*
COMMENT ON TABLE EventType
    IS 'Type of event {L->Lecture, E->Exam, B->Lab, ...}';
*/

DROP TABLE if exists  EventOccurrence;

CREATE TABLE EventOccurrence
(
    code character varying(8) NOT NULL,
    trans character varying(8)  NOT NULL,
    CONSTRAINT EOPK PRIMARY KEY (code)
);

/*
COMMENT ON TABLE EventOccurrence
    IS 'Type of event {Hourly, Daily, Weekly, Monthly, Once Off, Annually}';
*/

DROP TABLE if exists EventVenue;

CREATE TABLE EventVenue
(
	code character varying (8) NOT NULL,
	trans character varying (16) NOT NULL,
	CONSTRAINT VPK PRIMARY KEY (code)
);

/*
COMMENT ON TABLE EventVenue
    IS 'place of event {Callan Building Room ?, Eolas Building Lab ?, Phoenix For Coffee E 2.80, ...}';
*/

DROP TABLE if exists EventSeed;

CREATE TABLE  EventSeed
(
    modulecode character varying (8) NOT NULL,
    occurrence character varying (8) NOT NULL,
    type character varying(8)  NOT NULL,
    datetime timestamp  NOT NULL,
    venue character varying (8) NOT NULL,
    durationInMins int,
    CONSTRAINT ESPK PRIMARY KEY (modulecode, occurrence, type, datetime),

	CONSTRAINT eventstypefk FOREIGN KEY (type)
        REFERENCES eventtype (code) MATCH SIMPLE,

	CONSTRAINT eventsoccurfk FOREIGN KEY (occurrence)
        REFERENCES EventOccurrence (code) MATCH SIMPLE,

	CONSTRAINT eventsvenuefk FOREIGN KEY (venue)
        REFERENCES eventvenue (code) MATCH SIMPLE
);

/*
COMMENT ON TABLE EventSeed
    IS 'Seed table for event. Use as base for creating various events by date and time. 
	Scheduled event for a module. Includes : type {L->Lecture, E->Exam, B->Lab}, Time and date and duration';
*/

DROP TABLE if exists Event;

CREATE TABLE  Event
(
    modulecode character varying (8) NOT NULL,
    occurrence character varying (8) NOT NULL,
    type character varying(8)  NOT NULL,
    datetime timestamp  NOT NULL,
    venue character varying (8) NOT NULL,
    durationInMins int,
    CONSTRAINT EPK PRIMARY KEY (modulecode, occurrence, type, datetime),

	CONSTRAINT eventtypefk FOREIGN KEY (type)
        REFERENCES eventtype (code) MATCH SIMPLE,

	CONSTRAINT eventoccurfk FOREIGN KEY (occurrence)
        REFERENCES EventOccurrence (code) MATCH SIMPLE,

	CONSTRAINT eventvenuefk FOREIGN KEY (venue)
        REFERENCES eventvenue (code) MATCH SIMPLE
);

/*
COMMENT ON TABLE Event
    IS 'Scheduled event for a module. Includes : type {L->Lecture, E->Exam, B->Lab}, Time and date and duration';
*/
