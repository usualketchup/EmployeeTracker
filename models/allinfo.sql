DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db;
CREATE TABLE employee (
id INT NOT NULL PRIMARY KEY auto_increment,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT NOT NULL,
manager_id INT);

CREATE TABLE role (
id INT NOT NULL PRIMARY KEY auto_increment,
title VARCHAR(30) NOT NULL,
salary DECIMAL NOT NULL,
department_id INT NOT NULL);

CREATE TABLE department (
id INT NOT NULL PRIMARY KEY auto_increment,
name VARCHAR(30) NOT NULL);

USE employee_db;
INSERT INTO department (name) VALUES 
("Human Resources"),
("IT"),
("Sales"),
("Accounting"),
("Logistics"),
("Payroll");

INSERT INTO role (title, salary, department_id) VALUES
("Receptionist", 40000, 1),
("Office Culture Manager",65000,1),
("IT Manager",65000,2),
("Full Stack Developer",90000, 2),
("Database Admin",65000,2),
("Prodcut Specialist", 66000,2),
("Fulfillment Director", 70000, 3),
("President of Sales",115000,3),
("Accounts Receivable Analyst",60000,4),
("Accounts Payable Analyst",60000,4),
("Senior Accountant",90000,4),
("Logistics Manager",80000,5),
("Payroll Administrator",55000,6); 

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
("James", "Smith",3,NULL),
("Anissa","Garcia",5,NULL),
("James ", "Barzetti",6,NULL),
("Belenos","Schnieder",2,1),
("Johnson","Assenberg",1,2),
("Mathias","Lowry",5,NULL),
("Joaquin","Jokinen",6,NULL),
("David","Ventura",7,NULL),
("Robert ","Martinez",4,NULL),
("Kamryn","Kinley",5,1),
("Astra","Smith",2,2),
("Michael","Muller",4,4);