-- Sample Users
INSERT INTO Users (name, email, phone_number) VALUES
('Amira A.', 'amira@example.com', '2519--------'),
('prina K.', 'prina@example.com', '2519--------');

-- Sample Properties
INSERT INTO Properties (user_id, title, description, address, city, country, price_per_night, max_guests)
VALUES
(1, 'Modern Studio Apartment', 'Great for solo travelers', 'Bole Street 12', 'Addis Ababa', 'Ethiopia', 45.00, 2),
(2, 'Family Villa', 'Perfect for families and groups', 'Gurd Shola Avenue', 'Addis Ababa', 'Ethiopia', 120.00, 6);

-- Sample Bookings
INSERT INTO Bookings (user_id, property_id, start_date, end_date, total_price)
VALUES
(1, 2, '2025-07-01', '2025-07-05', 480.00),
(2, 1, '2025-07-10', '2025-07-12', 90.00);

-- sample payments
INSERT INTO Payments (booking_id, amount, payment_method, payment_date, status)
VALUES
(1, 480.00, 'Bank', '2025-06-30', 'Completed'),
(2, 90.00, 'Cash', '2025-07-09', 'Pending');
