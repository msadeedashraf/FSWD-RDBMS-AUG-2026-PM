
# MySQL vs Oracle – Conceptual Case Studies

These case studies are designed for students transitioning from Oracle to MySQL, focusing on **conceptual understanding** without query-based tasks. The goal is to highlight the differences in architecture, data types, transactions, constraints, user access, and more.

---

## ✅ Case Study 1: E-Government Document Management System

### 🎯 Focus Areas
- Data Types
- Transactions
- Storage Engines

### 🗂️ Scenario
A government agency has been using Oracle to manage a document tracking system, storing PDF metadata, tracking approval stages, and archiving. They are now moving to MySQL due to cost constraints.

### 📌 Conceptual Questions
1. **Data Types Compatibility**  
   - In Oracle, `CLOB` and `BLOB` were used for storing metadata and file references.  
   👉 How are these handled in MySQL? Are there size or engine limitations?

2. **Storage Engine Choice**  
   - Oracle uses a single storage engine.  
   👉 What are the pros and cons of MySQL’s pluggable storage engines like InnoDB and MyISAM for this use case?

3. **Transaction Handling**  
   - Oracle provides ACID-compliant transactions by default.  
   👉 In MySQL, are all storage engines transactional? How does this impact consistency?

4. **Auto-Increment vs. Sequences**  
   - Oracle uses `SEQUENCE` objects for unique IDs.  
   👉 How does MySQL’s `AUTO_INCREMENT` work differently? What should be considered for future migrations?

5. **Backup & Recovery**  
   - Oracle has RMAN.  
   👉 What are MySQL’s strategies for consistent point-in-time recovery?

---

## ✅ Case Study 2: University Student Enrollment System

### 🎯 Focus Areas
- Constraints
- Indexing
- Views
- User Access

### 🎓 Scenario
A university used Oracle for enrollment, relying on strict referential integrity, constraints, and complex views. They want to shift to MySQL to reduce costs and simplify deployment.

### 📌 Conceptual Questions
1. **Constraint Management**  
   - Oracle enforces `CHECK` constraints.  
   👉 How reliable are `CHECK` constraints in MySQL?

2. **Foreign Key Enforcement**  
   - Oracle strictly enforces FK constraints.  
   👉 How does MySQL differ, especially between InnoDB and MyISAM?

3. **Indexing Behavior**  
   - Oracle supports bitmap and function-based indexes.  
   👉 What types of indexes are supported in MySQL?

4. **Views & Materialized Views**  
   - Oracle supports materialized views.  
   👉 Does MySQL support them? How to simulate the behavior?

5. **User Roles & Privileges**  
   - Oracle supports detailed access control.  
   👉 What are MySQL’s capabilities and limitations in this area?

---

## ✅ Case Study 3: Retail Chain Inventory & POS System

### 🎯 Focus Areas
- Procedures
- Triggers
- Scheduling
- Architecture

### 🛒 Scenario
A retail chain was using Oracle’s PL/SQL procedures and triggers for syncing inventory and processing sales. They want to migrate to MySQL for scale-out and cost-efficiency.

### 📌 Conceptual Questions
1. **Procedural Logic Differences**  
   - Oracle’s PL/SQL is powerful.  
   👉 How does MySQL compare in terms of stored procedures and error handling?

2. **Triggers**  
   - Oracle allows compound triggers and multiple triggers per event.  
   👉 What are MySQL’s limitations with BEFORE/AFTER triggers?

3. **Scheduling Jobs**  
   - Oracle has DBMS_SCHEDULER.  
   👉 How does MySQL handle recurring tasks?

4. **Tooling Differences**  
   - Oracle developers use SQL Developer.  
   👉 What are MySQL alternatives? Are any major features missing?

5. **Replication & Scalability**  
   - Oracle supports Data Guard.  
   👉 What does MySQL offer (e.g., GTID, async replication)?

---

## 📘 Summary of Learning Objectives

| Concept Area           | Oracle Feature                    | MySQL Equivalent / Difference                            |
|------------------------|-----------------------------------|----------------------------------------------------------|
| Data Types             | VARCHAR2, NUMBER, DATE            | VARCHAR, INT, DATETIME (fewer built-in constraints)      |
| Transactions           | Always enabled                    | Engine-dependent (InnoDB vs. MyISAM)                     |
| Constraints            | Strong support for CHECK, FKs     | CHECK parsed only before 8.0, FK engine-dependent        |
| Indexing               | Bitmap, function-based            | B-tree, hash (InnoDB limitations)                        |
| Views                  | Materialized views supported      | No built-in support (simulate with tables + triggers)    |
| Roles/Users            | Fine-grained roles, column-level  | Basic roles (more support added in 8.0)                  |
| Procedures & Triggers  | Advanced PL/SQL, compound triggers| Limited procedural logic, one trigger per event          |
| Job Scheduling         | DBMS_SCHEDULER                    | MySQL Event Scheduler or external cron                   |
| Replication            | Data Guard                        | Async, semi-sync, GTID-based replication                 |
