CREATE DATABASE SportCityMS;
USE SportCityMS;

CREATE TABLE User (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  fname VARCHAR(255) NOT NULL,
  lname VARCHAR(255) NOT NULL,
  phone_number VARCHAR(15) NOT NULL
);

CREATE TABLE Customer (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES User(id)
);

CREATE TABLE Admin (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES User(id)
);

CREATE TABLE Booking (
  id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT NOT NULL,
  facility_id INT NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES Customer(id),
  FOREIGN KEY (facility_id) REFERENCES Facility(id)
);

CREATE TABLE Facility (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  location VARCHAR(255) NOT NULL,
  capacity INT NOT NULL
);

CREATE TABLE Event (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL
);

CREATE TABLE Report (
  id INT AUTO_INCREMENT PRIMARY KEY,
  report TEXT NOT NULL,
  name VARCHAR(255) NOT NULL,
  status VARCHAR(255) NOT NULL
);

CREATE TABLE Employee (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  birth_date DATE NOT NULL
);

CREATE TABLE Equipment (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  details TEXT NOT NULL,
  provider_name VARCHAR(255) NOT NULL,
  provider_email VARCHAR(255) NOT NULL,
  facility_id INT NOT NULL,
  FOREIGN KEY (facility_id) REFERENCES Facility(id)
);
