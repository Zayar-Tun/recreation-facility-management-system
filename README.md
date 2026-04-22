# Recreation Facility Management System in a Housing Complex

## Project Overview
This project is a database system for managing recreational facility reservations in a housing complex. The system is designed to store and manage information about buildings, apartments, facilities, residents, non-residents, employees, and reservations.

The housing complex includes multiple high-rise buildings and shared recreational facilities such as a swimming pool, gym, and tennis court. Residents and non-residents can reserve facilities, and the database keeps track of reservation details, resident status, apartment information, facility information, and employee handling.

## Project Objectives
The goal of this project is to:
- Design a relational database based on a real-world housing complex scenario
- Model entities, attributes, relationships, and constraints
- Implement the database using SQL
- Populate the database with sample data
- Write queries to retrieve, update, and analyze reservation and resident information

## Main Features
This project supports:
- Managing buildings and apartments
- Managing recreational facilities
- Storing resident and non-resident information
- Recording apartment residency periods
- Managing facility reservations
- Tracking employee handling of reservations
- Recording show-up status for reservations
- Running analytical and reporting queries on reservations and facilities 

## Entity Relationship Design
The database includes key entities such as:
- Housing Complex
- Building
- Apartment
- Facility
- Person
- Reservation

It also models important relationships such as:
- A building has apartments
- A person lives in an apartment
- A person makes a reservation
- A reservation is handled by a person
- A facility has reservations

The ER diagram for this project is included in this repository as an image.

## Files Included
- `create_tables.sql` — creates all tables
- `insert_data.sql` — inserts sample data into the tables
- `drop_table.sql` — drops tables if needed
- `Queries.txt` — contains SQL queries for retrieving and analyzing data
- `ERDiagram.png` — shows the database design
- `project_report.docx` — project write-up and description

## Sample Queries
Some example queries included in this project are:
- List reservations with tenant and facility details
- List all facilities and their reservations
- Find tenants who have never made a reservation
- Count total reservations per facility
- Find the facility with the highest number of reservations
- Create a view for residents and their apartment details
- Find residents who have reserved more than one type of facility
- Find the month with the highest number of reservations

## Technologies Used
- SQL
- Relational Database Design
- ER Modeling

## How to Run
1. Open your SQL database environment.
2. Run `create_tables.sql` to create the tables.
3. Run `insert_data.sql` to populate the database with sample data.
4. Run queries from `Queries.txt` to test and analyze the system.
5. If needed, run `drop_table.sql` to remove the tables.

## Notes
- Some queries may use syntax specific to MSSQL Server, such as `TOP 1` and `GETDATE()`. Notes are included in the query file where needed.
- This project was created as a student database design and SQL practice project.

## Learning Outcomes
Through this project, I practiced:
- Designing a relational database from a case description
- Creating ER diagrams
- Implementing tables and relationships in SQL
- Writing joins, subqueries, aggregate queries, updates, deletes, and views
- Working with realistic reservation and housing data

## Author
Zayar Tun
