# ALX Airbnb Database


This project is part of the **ALX Pro Backend Program** and focuses on designing and implementing a relational database schema for an Airbnb-like application.


This project defines and implements a relational database schema for an Airbnb-like platform, using **MySQL**. It includes schema definition, normalization, and sample data seeding.

---

## 📁 Project Structure


```bash
alx-airbnb-database/
├── normalization.md           # Steps taken to achieve 3NF normalization
├── database-script-0x01/
│   ├── schema.sql             # SQL schema definition (CREATE TABLE statements)
│   └── README.md              # Schema documentation
├── database-script-0x02/
│   ├── seed.sql               # SQL script to insert sample data
│   └── README.md              # Data seeding documentation
```


---

## 🧠 Database Design Overview

The system manages user interactions, property listings, bookings, payments, reviews, and messaging between users. 

### 1. **User**
Stores user details, roles (guest/host/admin), and contact info.

### 2. **Property**
Holds data about listed properties, hosted by users.

### 3. **Booking**
Tracks property bookings by users, including status and dates.

### 4. **Payment**
Logs payment transactions related to bookings.

### 5. **Review**
Allows users to rate and comment on properties.

### 6. **Message**
Supports messaging between users.

---

## 🧱 Normalization

All tables were normalized up to **Third Normal Form (3NF)**:
- Each column contains atomic values.
- Partial and transitive dependencies were removed.
- Foreign keys define relationships.

See [`normalization.md`](./normalization.md) for full explanation.

---

## 💾 Technologies Used

- **MySQL 8+**
- **SQL** (DDL + DML)
- UUIDs for primary keys
- ENUMs for controlled attribute values
- Timestamps for record tracking

> ✅ Note: Schema syntax is designed for **MySQL**. Minor changes may be needed for PostgreSQL (e.g., ENUM definitions and UUID handling).

---

## 🧪 Sample Data

Sample records for each table are included to reflect realistic usage (multiple users, bookings, reviews, etc.). See [`seed.sql`](./database-script-0x02/seed.sql).

---

## 🛠️ Setup Instructions

1. Clone the repo:
   ```bash
   git clone https://github.com/amadououry885/alx-airbnb-database.git
   cd alx-airbnb-database



