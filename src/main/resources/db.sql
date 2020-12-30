CREATE DATABASE my_db;
USE my_db;

CREATE TABLE users
(
    username varchar(15),
    password varchar(100),
    enabled  tinyint(1),
    PRIMARY KEY (username)
);

CREATE TABLE authorities
(
    username  varchar(15),
    authority varchar(25),
    FOREIGN KEY (username) references users (username)
);

INSERT INTO my_db.users (username, password, enabled)
VALUES ('adilkhan', '{bcrypt}$2a$10$rZz0/qtjoDaBURU3sPA1veK9l/0Ns81Q3KiTRW6oi23pv4sXFkHSO', 1),
       ('elena', '{bcrypt}$2a$10$p64KYaxN.DRtKNhNrHIKHu.QySfvbm3D/voV52//s.gJENIZFKV3K', 1),
       ('ivan', '{noop}ivan', 1);

INSERT INTO my_db.authorities (username, authority)
VALUES ('adilkhan', 'ROLE_EMPLOYEE'),
       ('elena', 'ROLE_HR'),
       ('ivan', 'ROLE_HR'),
       ('ivan', 'ROLE_MANAGER');