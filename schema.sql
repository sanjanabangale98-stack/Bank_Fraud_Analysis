-- Step 1: Create Database
CREATE DATABASE bank_fraud_analysis;
USE bank_fraud_analysis;

-- Step 2: Create Tables

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    account_type VARCHAR(20)
);

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_opened DATE,
    balance INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_date DATE,
    amount INT,
    transaction_type VARCHAR(20),
    channel VARCHAR(20),
    location VARCHAR(50),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
