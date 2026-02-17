# muehle-datenbank-modell

Relational SQL database model for managing real-world grain mill operations.

---

## Overview

This project implements a fully normalized relational database schema for a grain mill management system.

The model represents operational workflows including grain intake, processing, storage, product distribution and invoice handling.  
It strictly separates master data from transactional data and enforces structural consistency through relational constraints.

The schema is designed to support scalable operational processes while maintaining data integrity and traceability.

### Core Business Entities

- Farmers  
- Grain Deliveries  
- Storage Units  
- Products  
- Customers  
- Orders  
- Invoices  

---

## Database Design Principles

The database design follows established relational modeling standards:

- Normalization up to Third Normal Form (3NF)
- Primary key and foreign key enforcement
- 1:n relationship modeling
- Referential integrity constraints
- Separation of master and transactional data
- Consistent naming conventions and domain structuring

---

## Technical Scope

- SQL-based schema definition
- Structured entity-relationship modeling
- Constraint-driven data validation
- Logical data modeling for operational business systems

---

## Repository Structure
├── queries.sql      # SQL schema and import queries
├── er-diagram.png   # Entity-Relationship diagram
├── queries.pdf      # Sample analytical queries with results

---

## Academic Context

Developed as part of a university assignment in database systems, focusing on relational modeling and SQL schema implementation.
