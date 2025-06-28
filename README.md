# ERD - Entity Relationship Diagram for Airbnb Clone

## Entities and Attributes

### 1. User
- id (PK)
- name
- email (unique)
- phone_number
- created_at
- updated_at

### 2. Property
- id (PK)
- user_id (FK → User.id)
- title
- description
- address
- city
- country
- price_per_night
- max_guests
- created_at
- updated_at

### 3. Booking
- id (PK)
- user_id (FK → User.id)
- property_id (FK → Property.id)
- start_date
- end_date
- total_price
- created_at
- updated_at

### 4. Payment
- id (PK)
- booking_id (FK → Booking.id)
- amount
- payment_method
- payment_date
- status

## Relationships

- One `User` can have many `Properties`
- One `User` can make many `Bookings`
- One `Property` can be booked many times
- One `Booking` has one `Payment`

## ERD Image

[Include image or upload `erd.drawio` or `.png` here if required]

