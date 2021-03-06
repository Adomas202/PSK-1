CREATE TABLE IF NOT EXISTS UNIVERSITY
(
	ID INTEGER NOT NULL IDENTITY,
	NAME            VARCHAR(50),
	OPT_LOCK_VERSION INTEGER,
	PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS STUDENT
(
	ID INTEGER NOT NULL IDENTITY,
	FIRSTNAME       VARCHAR(20),
	LASTNAME       VARCHAR(20),
	UNIVERSITY_ID    INTEGER,
	STUDENTNO  VARCHAR(20),
	OPT_LOCK_VERSION INTEGER,
	PRIMARY KEY (ID),
	FOREIGN KEY (UNIVERSITY_ID) REFERENCES UNIVERSITY (ID)
);

CREATE TABLE IF NOT EXISTS SUBJECT
(
	ID INTEGER NOT NULL IDENTITY,
	CODE             VARCHAR(50),
	NAME             VARCHAR(50),
	LECTURER             VARCHAR(50),
	OPT_LOCK_VERSION INTEGER,
	PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS STUDENT_SUBJECT
(
	STUDENTS_ID      INTEGER,
	SUBJECTS_ID       INTEGER,
	PRIMARY KEY (STUDENTS_ID, SUBJECTS_ID),
	FOREIGN KEY (STUDENTS_ID) REFERENCES STUDENT (ID),
	FOREIGN KEY (SUBJECTS_ID) REFERENCES SUBJECT (ID)
);
