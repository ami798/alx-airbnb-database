# Airbnb Backend Database Design

This project demonstrates the design and implementation of a relational database system for an Airbnb-style platform. It includes ER diagramming, normalization, SQL schema creation, and realistic data population — all tailored to support core features like property listing, booking, and payment processing.

---

## 📁 Project Structure

airbnb-database/
├── ERD/
│ ├── erd.png
│ └── requirements.md
├── database-script-0x01/
│ ├── schema.sql
│ └── README.md
├── database-script-0x02/
│ ├── seed.sql
│ └── README.md
├── normalization.md
└── README.md


---

## 🎯 Project Goals

- Model a real-world rental platform using relational database principles.
- Visualize the system using an Entity-Relationship Diagram (ERD).
- Normalize the database to 3rd Normal Form (3NF) to ensure efficiency and data integrity.
- Create the database schema using SQL Data Definition Language (DDL).
- Populate the database with meaningful sample data using SQL DML.

---

## ✅ Task Summary

### 1. Entity-Relationship Diagram (ERD)
- Visual representation of entities: `User`, `Property`, `Booking`, `Payment`, etc.
- Relationships mapped with foreign keys.
- File: `ERD/erd.png`

### 2. Normalization
- Applied 1NF, 2NF, and 3NF.
- Removed redundancy and ensured functional dependency.
- Documented in `normalization.md`

### 3. Database Schema (DDL)
- Used SQL `CREATE TABLE` statements to define all entities and relationships.
- Included:
  - Appropriate data types
  - Primary and foreign keys
  - Indexes for performance
- File: `database-script-0x01/schema.sql`

### 4. Seed Data (DML)
- Added realistic sample data for:
  - Multiple users and hosts
  - Property listings
  - Bookings and payments
- File: `database-script-0x02/seed.sql`

---

## 💻 Technologies Used

- **SQL (MySQL / PostgreSQL)**
- **Draw.io** – For ERD
- **Git & GitHub** – Version control and submission
- **Markdown** – For documentation

---

## 📝 How to Use

1. **Clone the repository**:

```bash
git clone https://github.com/your-username/airbnb-database.git
cd airbnb-database
