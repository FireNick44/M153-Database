<p align="center">
   <img align="center" src="./github/logo.svg" height="250px">
</p>
<h1 align="center">
   M153 Project
</h1>
<p align="center">
   Pino Scheiblechner, Yannic Studer </br> Thema: Kiosk Datenbank
</p>

## Documentation
Go to [documentation](./doc.md)

## Introduction
In a group project (max. two learners) you will design and create a database on a freely chosen topic. The database will be created under MS-SQL (T-SQL) so that all scripts work with the "SQL Server Management Studio".

###  The project includes:
 - a documentation with [Entity–relationship model](https://en.wikipedia.org/wiki/Entity%E2%80%93relationship_model) database description
 - SQL code with which the database incl. trigger, stored procedureand function can be created.
 - SQL code with which the data is inserted into the database. (in form of a script)
 - SQL code for queries/manipulation or tests including a short test description to control the trigger, stored procedure and function.
 - a simple work report (with date, duration, description of which person did the work).

### Contributors

 - [Yannic Studer](https://github.com/FireNick44)
 - [Pino Scheiblechner](https://github.com/der-Pino)

## Expected result
### A documentation with:

 - [x] Short description of the subject
 - [x] Entity–relationship model of the database 
 - [x] Relational Model of the database incl. data type and description of the individual fields
 - [x] Description of the queries/manipulations or tests
 - [x] Description of the stored procedures/functions and the trigger and their application

### The trigger, the stored procedure or the function should have a simple error handling, means:

 - false or empty arguments will be intercepted
 - empty results are displayed e.g. by an error messageor return zero
 - the returned value of the stored procedure returns the number of affected records
 - corresponding error messages are generated for the errors, as usual in the Management Studio
 - each error leads to a defined abort

### Each page of the documentation must contain the following information:

 - the surnames and first names of the group members or the surname and first names in case of individual work
 - Class
 - Number of the current page and the total number of pages.

> A corresponding Word template can be requested if necessary.

## Project submission
### Scope:
A zipped file with the name of the two group members or names in case of an individual work in the following form:
- M153_Project_LastName1_FirstName1_LastName2_FirstName2.zip. <br>
or 
- M153_Project_LastName_FirstName.zip

which contains the following files:
 - Documentation as pdf-file (M153_Project.pdf)
 - SQL script for creating the database: M153_Projekt_Create.sql
 - SQL script for inserting the data: M153_Project_Insert.sql
 - SQL script with the queries/manipulations or tests: 153_Project_Query.sql

### Art:
Send the zipped file as an attachment to a Teams Chat message directly to peter.kaufmann@sluz.ch. 

### Deadline: 
No later than Friday, 23 December 2022 at 23:59. Date and time of the chat message is valid! Submissions that are not on time will be marked with a 1! 

### Working report

for a more detailed overview of the work, look at the commits

## Documentation
Go to [documentation](./doc.md)

## License
Project is [MIT licensed](./LICENSE)
