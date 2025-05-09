# Entity-Relationship Diagram: ALX Airbnb Clone Database

## Objective
This document defines the entities, attributes, and relationships for the ALX Airbnb database.

## Entities and Attributes

### User
- user_id (PK)
- first_name
- last_name
- email
- password_hash
- phone_number
- role
- created_at

### Property
- property_id (PK)
- host_id (FK to User)
- name
- description
- location
- price_per_night
- created_at
- updated_at

### Booking
- booking_id (PK)
- property_id (FK)
- user_id (FK)
- start_date
- end_date
- total_price
- status
- created_at

### Payment
- payment_id (PK)
- booking_id (FK)
- amount
- payment_date
- payment_method

### Review
- review_id (PK)
- property_id (FK)
- user_id (FK)
- rating
- comment
- created_at

### Message
- message_id (PK)
- sender_id (FK)
- recipient_id (FK)
- message_body
- sent_at

## Relationships

- User → Role: Many-to-One
- User → Property: One-to-Many (User as Host)
- User → Booking: One-to-Many
- Property → Booking: One-to-Many
- Booking → Payment: One-to-One
- User → Review: One-to-Many
- Property → Review: One-to-Many
- User → Message (as sender): One-to-Many
- User → Message (as recipient): One-to-Many


