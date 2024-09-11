# Project-Dinesh-smdinsh
Task1 
Project Title: Academic Management System (using SQL)

Project Description: Design and develop an Academic Management System using SQL. The projects should Involve three tables 1.Studentinfo 2. Coursesinfo 3.Enrollmentinfo. The Aim is to create a system that allows for managing student information and course enrollment.
The project will include the following tasks:

Database Creation:
a) Create the Studentinfo table with columns STU_ID, STU_NAME, DOB, PHONE_NO, EMAIL_ID, ADDRESS. b) Create the Coursesinfo table with columns COURSE_ID, COURSE_NAME,COURSE_INSTRUCTOR NAME. c)Create the Enrollmentinfo with columns ENROLLMENT_ID, STU_ID, COURSE_ID,
ENROLL_STATUS(Enrolled/Not Enrolled). The FOREIGN KEY constraint in the Enrollmentinfo table references the STU_ID column in the Studentinfo table and the COURSE_ID column in the Coursesinfo table.

Task 2
Project: Student Database Management System (PostgreSQL)
Objective: Design and implement a student database management system using PostgreSQL that allows storing and retrieving student information efficiently. The project will include the following tasks:
1. Database Setup
Create a database named "student_database."
Create a table called " student_table" with the following columns: Student_id (integer), Stu_name (text), Department (text), email_id (text), Phone_no (numeric), Address (text), Date_of_birth (date), Gender (text), Major (text), GPA (numeric), Grade (text) should be A,B,C etc.

Task 3
Project: Event Management System using PostgreSQL
Objective: To develop the application that allows users to create and manage events, track attendees, and handle event registrations efficiently. The project will include the following tasks:
1. Database Creation
Create a database named "EventsManagement."
Create tables for Events, Attendees, and Registrations.
Events-Event_Id, Event_Name, Event_Date, Event_Location, Event_Description
Attendees-Attendee_Id, Attendee_Name, Attendee_Phone, Attendee_Email, Attendee_City
Registrations-Registration_id, Event_Id, Attendee_Id,Registration_Date, Registration_Amount.
The FOREIGN KEY constraint in the Registrations table references the Event_Id column in the Events table and the Attendee_Id column in the Attendees table.

Task4
Develop the queries to retrieve information from the OLAP operations performed and to gain a deeper understanding of the sales data through different dimensions, aggregations, and filters.

Project: OLAP Operations (using Redshift or PostgreSQL)
Objective: Perform OLAP operations (Drill Down, Rollup, Cube, Slice, and Dice) on the "sales_sample" table to analyze sales data. The project will include the following tasks:
Database Creation
Create a database to store the sales data (Redshift or PostgreSQL)
