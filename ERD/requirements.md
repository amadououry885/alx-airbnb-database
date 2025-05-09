# ER Diagram – ALX Airbnb Database

## 🧠 Purpose and Context

This Entity-Relationship Diagram (ERD) models the core database structure of an Airbnb-like application. The system supports core functionalities such as property listings, user management (guests, hosts, admins), booking and payment handling, reviews, and direct messaging between users.

This ERD was created as part of the ALX Airbnb Database project, aimed at developing a scalable, normalized, and production-grade relational database.

---

## 🏗️ Entities and Attributes

### 1. **User**
Represents anyone using the platform (guest, host, or admin).

| Attribute         | Type        | Constraints                                      |
|------------------|-------------|--------------------------------------------------|
| `user_id`        | UUID        | **Primary Key**, Indexed                         |
| `first_name`     | VARCHAR     | NOT NULL                                         |
| `last_name`      | VARCHAR     | NOT NULL                                         |
| `email`          | VARCHAR     | **UNIQUE**, NOT NULL                             |
| `password_hash`  | VARCHAR     | NOT NULL                                         |
| `phone_number`   | VARCHAR     | Optional                                         |
| `role`           | ENUM        | (guest, host, admin), NOT NULL                   |
| `created_at`     | TIMESTAMP   | DEFAULT CURRENT_TIMESTAMP                        |

---

### 2. **Property**
Represents a place listed for booking, owned by a host.

| Attribute         | Type        | Constraints                                      |
|------------------|-------------|--------------------------------------------------|
| `property_id`    | UUID        | **Primary Key**, Indexed                         |
| `host_id`        | UUID        | **Foreign Key** → `User(user_id)`                |
| `name`           | VARCHAR     | NOT NULL                                         |
| `description`    | TEXT        | NOT NULL                                         |
| `location`       | VARCHAR     | NOT NULL                                         |
| `pricepernight`  | DECIMAL     | NOT NULL                                         |
| `created_at`     | TIMESTAMP   | DEFAULT CURRENT_TIMESTAMP                        |
| `updated_at`     | TIMESTAMP   | ON UPDATE CURRENT_TIMESTAMP                      |

---

### 3. **Booking**
Represents a reservation made by a guest for a specific property.

| Attribute         | Type        | Constraints                                      |
|------------------|-------------|--------------------------------------------------|
| `booking_id`     | UUID        | **Primary Key**, Indexed                         |
| `property_id`    | UUID        | **Foreign Key** → `Property(property_id)`        |
| `user_id`        | UUID        | **Foreign Key** → `User(user_id)`                |
| `start_date`     | DATE        | NOT NULL                                         |
| `end_date`       | DATE        | NOT NULL                                         |
| `total_price`    | DECIMAL     | NOT NULL                                         |
| `status`         | ENUM        | (pending, confirmed, canceled), NOT NULL         |
| `created_at`     | TIMESTAMP   | DEFAULT CURRENT_TIMESTAMP                        |

---

### 4. **Payment**
Represents a payment associated with a booking.

| Attribute         | Type        | Constraints                                      |
|------------------|-------------|--------------------------------------------------|
| `payment_id`     | UUID        | **Primary Key**, Indexed                         |
| `booking_id`     | UUID        | **Foreign Key** → `Booking(booking_id)`          |
| `amount`         | DECIMAL     | NOT NULL                                         |
| `payment_date`   | TIMESTAMP   | DEFAULT CURRENT_TIMESTAMP                        |
| `payment_method` | ENUM        | (credit_card, paypal, stripe), NOT NULL          |

---

### 5. **Review**
Represents a guest’s review of a property.

| Attribute         | Type        | Constraints                                      |
|------------------|-------------|--------------------------------------------------|
| `review_id`      | UUID        | **Primary Key**, Indexed                         |
| `property_id`    | UUID        | **Foreign Key** → `Property(property_id)`        |
| `user_id`        | UUID        | **Foreign Key** → `User(user_id)`                |
| `rating`         | INTEGER     | CHECK (rating >= 1 AND rating <= 5), NOT NULL    |
| `comment`        | TEXT        | NOT NULL                                         |
| `created_at`     | TIMESTAMP   | DEFAULT CURRENT_TIMESTAMP                        |

---

### 6. **Message**
Represents messages sent between users (guest ↔ host).

| Attribute         | Type        | Constraints                                      |
|------------------|-------------|--------------------------------------------------|
| `message_id`     | UUID        | **Primary Key**, Indexed                         |
| `sender_id`      | UUID        | **Foreign Key** → `User(user_id)`                |
| `recipient_id`   | UUID        | **Foreign Key** → `User(user_id)`                |
| `message_body`   | TEXT        | NOT NULL                                         |
| `sent_at`        | TIMESTAMP   | DEFAULT CURRENT_TIMESTAMP                        |

---

## 🔗 Relationships Overview

| Relationship | Description |
|-------------|-------------|
| **User ↔ Property** | A user (host) can own multiple properties. |
| **User ↔ Booking** | A user (guest) can make many bookings. |
| **Property ↔ Booking** | A property can be booked multiple times. |
| **Booking ↔ Payment** | Each booking has exactly one payment. |
| **Property ↔ Review** | A property can receive multiple reviews. |
| **User ↔ Review** | A user can write multiple reviews. |
| **User ↔ Message (sender)** | A user can send many messages. |
| **User ↔ Message (recipient)** | A user can receive many messages. |

These relationships are visually represented in the ERD using Crow’s Foot Notation.

---

## 🖼️ Diagram

The following diagram illustrates the full data model including keys, attributes, and relationship cardinalities.

## Diagram
![ERD](https://drive.google.com/uc?export=view&id=1qRfrL-rSDPhUcrk3dopmHTlqf0Iu_69r)

---


