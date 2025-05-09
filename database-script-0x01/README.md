# Airbnb Database Schema

This repository contains the SQL schema for an Airbnb-style booking platform. It includes table definitions and indexes for optimizing queries involving foreign key relationships.

## 📁 Files

- `schema.sql`: Contains all `CREATE TABLE` statements for the core entities.
- `indexes.sql`: Contains `CREATE INDEX` statements for all foreign key columns.

## 🗃️ Tables and Relationships

### Entities:
- **User**: Stores user information (guests, hosts, admins).
- **Property**: Listings owned by hosts.
- **Booking**: Reservations made by users on properties.
- **Payment**: Payment details for each booking.
- **Review**: User feedback on properties.
- **Message**: Messages exchanged between users.

### Relationships:
- Each **Property** is linked to one **User** (host).
- Each **Booking** links a **User** and a **Property**.
- Each **Payment** is tied to one **Booking**.
- Each **Review** links a **User** and a **Property**.
- Each **Message** involves two **Users** (sender and recipient).

## ⚙️ Indexing Strategy

To improve query performance, foreign key columns have been indexed:
- `host_id`, `user_id`, `property_id`, `booking_id`, `sender_id`, `recipient_id`, etc.

These indexes speed up joins and filters commonly used in transactional queries.
