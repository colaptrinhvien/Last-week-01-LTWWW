CREATE DATABASE mydb;

USE mydb;

-- B?ng account
CREATE TABLE account (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255),
    password VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20),
    status INT
);

-- B?ng role
CREATE TABLE role (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(50),
    description VARCHAR(255),
    status INT
);

-- B?ng grant_access
CREATE TABLE grant_access (
    account_id INT,
    role_id INT,
    is_grant INT,
    note VARCHAR(255),
    PRIMARY KEY (account_id, role_id),
    FOREIGN KEY (account_id) REFERENCES account(account_id),
    FOREIGN KEY (role_id) REFERENCES role(role_id)
);

-- B?ng log
CREATE TABLE log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    account_login INT,
    login_time DATETIME,
    logout_time DATETIME,
    note VARCHAR(255),
    FOREIGN KEY (account_login) REFERENCES account(account_id)
);