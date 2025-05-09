# Database Normalization: ALX Airbnb Clone

## Objective
To ensure the Airbnb clone database design follows the principles of database normalization up to the Third Normal Form (3NF) for improved consistency, reduced redundancy, and easier maintenance.

---

## Step 1: First Normal Form (1NF)

- All tables have a primary key.
- Each column contains only **atomic** values (i.e., no arrays or sets).
- No repeating groups exist.
- Each field contains a single value of the correct data type.


## Step 2: Second Normal Form (2NF)

- The database is already in 1NF.
- All non-key attributes are fully functionally dependent on the entire primary key.
- Since all our tables use **single-column primary keys (UUIDs)**, there are no partial dependencies.


## Step 3: Third Normal Form (3NF)

- The database is in 2NF.
- There are no **transitive dependencies**; every non-key attribute depends **only on the primary key** of its table.
- Examples:
  - In the `User` table, `first_name`, `last_name`, `email`, etc., all depend only on `user_id`.
  - In the `Booking` table, `start_date`, `end_date`, and `total_price` depend only on `booking_id`.
  - `role` and `status` fields are implemented as **ENUMs**, which simplifies logic and maintains constraints without requiring a separate lookup table at this stage.

