# load-export-data-mysql
Process showing how to load data into a MySQL database, perform an export, destroy the database and load the data back again
## 1) Create MySQL db from csv file
run setup.sql to setup the PGA_3ball_D1_D2 database and create the basic table
## 2) Load the data into MySQL, and then use mysqldump to export everyting into a SQL file
a) run load_csv sql to populate the PGA_3ball_D1_D2 db from the csv file
- SELECT * from pga_3ball_d1_d2 LIMIT 10 [to check that data has populated]

b) Export everything to a sql file:
-  Linux: mysqldump -u root -p ratings > export.sql
- Windows: using MySQL Workbench
    
    i. Connect to your MySQL database.
    
    ii. Click Server on the main tool bar.
    
    iii. Select Data Export.
    
    iv. Select the tables you want to back up.
    
    v. Under Export Options, select where you want your dump saved. By default, it will save to your Documents folder in a subfolder titled dumps.
    
    vi. Click Start Export
 ### https://kb.iu.edu/d/apnn

## 3) Create a new (empty) database and use the exported data to load everything again. Ensure that all data is present

a) drop database PGA_3ball_D1_D2;  [then refresh local host... blows away existing db]

b) create database PGA_3ball_D1_D2; [then refresh local host]

c) modify export.sql to use PGA_3ball_D1_D2 db and run script

b) SELECT * from pga_3ball_d1_d2 LIMIT 10 [to check that data has been correctly imported] 
