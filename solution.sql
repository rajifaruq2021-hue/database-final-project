-- Final Project: Library Management System
-- Name: RAJI FARUQ ISHOLA

-- Create the new database for our library.
CREATE DATABASE IF NOT EXISTS LibraryManagement;

-- Select the new database to use for the following commands.
USE LibraryManagement;

-- =============================================================================
-- Table: Books
-- Stores all the information about each book in the library.
-- =============================================================================
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    published_year INT,
    PRIMARY KEY (book_id)
);

-- =============================================================================
-- Table: Members
-- Stores all the information about each library member.
-- =============================================================================
CREATE TABLE Members (
    member_id INT AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    registration_date DATE,
    PRIMARY KEY (member_id)
);

-- =============================================================================
-- Table: Loans
-- This table connects Books and Members, tracking who borrowed which book and when.
-- =============================================================================
CREATE TABLE Loans (
    loan_id INT AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    loan_date DATE NOT NULL,
    return_date DATE,
    PRIMARY KEY (loan_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
