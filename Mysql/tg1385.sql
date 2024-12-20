CREATE TABLE STUDENT(
    Reg_No CHAR(6) NOT NULL,
    State VARCHAR(20),
    User_ID VARCHAR(6),
    PRIMARY KEY(Reg_No),
    FOREIGN KEY (User_ID) REFERENCES user(User_ID)
);

CREATE TABLE LECTURER(
    LID CHAR(3) PRIMARY KEY,
    User_ID VARCHAR(6),
    FOREIGN KEY (User_ID) REFERENCES user(User_ID)
);

CREATE TABLE LECTURER_CONTACT(
    LID CHAR(3),
    Phone_No VARCHAR(11),
    FOREIGN KEY (LID) REFERENCES LECTURER(LID)
);

CREATE TABLE COURSE(
    Course_Code CHAR(3) PRIMARY KEY,
    name VARCHAR(30),
    type VARCHAR(20),
    Reg_No CHAR(6),
    SGPA DECIMAL(4,2),
    FOREIGN KEY (Reg_No) REFERENCES STUDENT(Reg_No)
);

CREATE TABLE LECTURER_COURSE(
    LID CHAR(3),
    Course_Code CHAR(3),
    Lec_Hours INT,
    Lec_In_Charge VARCHAR(30),
    FOREIGN KEY (LID) REFERENCES LECTURER(LID),
    FOREIGN KEY (Course_Code) REFERENCES COURSE(Course_Code)
);

CREATE TABLE TECHNICAL_OFFICER(
    TID CHAR(3) PRIMARY KEY,
    User_ID VARCHAR(6),
    FOREIGN KEY(User_ID) REFERENCES user(User_ID)
);

CREATE TABLE DEAN(
    Dean_ID CHAR(3) PRIMARY KEY,
    User_ID VARCHAR(6),
    FOREIGN KEY(User_ID) REFERENCES user(User_ID)
);

CREATE TABLE ADMIN(
    Admin_ID CHAR(3) PRIMARY KEY,
    User_ID VARCHAR(6),
    FOREIGN KEY(User_ID) REFERENCES user(User_ID)
);

CREATE TABLE ADMIN_CONTACT(
    Admin_ID CHAR(3),
    Phone_No VARCHAR(11),
    FOREIGN KEY(Admin_ID) REFERENCES ADMIN(Admin_ID)
);