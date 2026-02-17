# muehle-datenbank-modell

Relational SQL database model for managing real-world grain mill operations.

---

## Overview

This project implements a fully normalized relational database schema for a grain mill management system.

The database models operational workflows including:

- Grain intake and farmer deliveries  
- Storage management  
- Product processing  
- Customer order handling  
- Invoice generation  

The schema enforces structural integrity through primary and foreign key constraints and separates master data from transactional data to ensure consistency and scalability.

---

## Data Model Characteristics

The design follows established relational database principles:

- Normalization up to Third Normal Form (3NF)
- Clear separation of master data and transactional data
- 1:n relationship modeling
- Referential integrity via foreign keys
- Structured attribute naming conventions
- Constraint-based validation

The model supports traceability of grain deliveries through processing to final product invoicing.

---

## Technical Implementation

- SQL schema definition
- Relational table design
- Primary and foreign key constraints
- Structured entity-relationship modeling
- Analytical example queries

---

## Repository Structure

**queries.sql**  
Complete SQL schema definition and relevant database queries.

**er-diagram.png**  
Entity-Relationship diagram representing the logical data model.

**queries.pdf**  
Sample analytical queries including results and evaluation.

---

## Academic Context

Developed as part of a university assignment in database systems with a focus on relational modeling, schema normalization and SQL-based implementation.
