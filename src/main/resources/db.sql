CREATE DATABASE  my_db;
USE my_db;

CREATE TABLE users (
  username varchar(15),
  password varchar(100),
  enabled tinyint(1),
  PRIMARY KEY (username)
) ;

CREATE TABLE authorities (
  username varchar(15),
  authority varchar(25),
  FOREIGN KEY (username) references users(username)
) ;

INSERT INTO my_db.users (username, password, enabled)
VALUES
	('Adilkhan', '{noop}adilkhan', 1),
	('Elena', '{noop}elena', 1),
	('Ivan', '{noop}ivan', 1);
    
INSERT INTO my_db.authorities (username, authority)
VALUES
	('Adilkhan', 'ROLE_EMPLOYEE'),
	('Elena', 'ROLE_HR'),
    ('Ivan', 'ROLE_HR'),
	('Ivan', 'ROLE_MANAGER');
    
    