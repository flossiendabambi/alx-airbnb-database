# Sample Data for Airbnb Database

This SQL script populates the Airbnb-style database with sample data to demonstrate functionality and enable testing.

## 📁 Files

- `sample_data.sql` – Contains `INSERT` statements for all tables.

## 🗃️ Populated Tables

- **User** – Sample users with roles: guest, host, admin
- **Property** – Properties listed by hosts
- **Booking** – Bookings made by guests for specific dates
- **Payment** – Payments associated with bookings
- **Review** – Reviews left by users on properties
- **Message** – Messages exchanged between users

## 🚀 Usage

To load the data into your database:

```sql
-- Load schema first
\i schema.sql

-- Then insert sample data
\i sample_data.sql

