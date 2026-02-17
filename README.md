# muehle-datenbank-modell

Relational SQL database model for managing real-world mill operations.

---

## Overview

This project implements a fully normalized relational database schema for a grain mill.

The model represents operational workflows such as grain intake, processing, storage, product distribution and billing.  
It separates master data from transactional data and enforces structural integrity through relational constraints.

Core business entities include:

- Farmers  
- Grain deliveries  
- Storage units  
- Products  
- Customers  
- Orders  
- Invoices  

---

## Database Design Principles

The schema applies standard relational database modeling concepts:

- Normalization (up to 3NF)
- Primary and foreign key constraints
- 1:n relationships
- Referential integrity
- Clear separation of master and transaction data
- Consistent attribute naming and domain structuring

---

## Technical Scope

- SQL-based schema definition
- Structured entity-relationship design
- Constraint-based data validation
- Logical data modeling for operational systems

---

## Academic Context

Developed as part of a university assignment in database systems, focusing on relational modeling and SQL schema implementation.
