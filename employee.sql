DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;



CREATE TABLE department_table (
    id INT NOT null AUTO_INCREMENT,
    dept_name VARCHAR(30),
    PRIMARY KEY (id)
);


CREATE TABLE role_table (
    id INT NOT null AUTO_INCREMENT,
    title VARCHAR(30),
    salary DECIMAL(10,4),
    department_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (department_id) REFERENCES department_table(id)
);



CREATE TABLE employee_table (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES role_table(id),
  FOREIGN KEY (manager_id) REFERENCES employee_table(id)
);

SELECT * FROM employee_table;