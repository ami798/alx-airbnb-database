
-- Users table
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--  Properties table
CREATE TABLE Properties (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    title VARCHAR(255),
    description TEXT,
    address VARCHAR(255),
    city VARCHAR(100),
    country VARCHAR(100),
    price_per_night DECIMAL(10, 2),
    max_guests INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Bookings table
CREATE TABLE Bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    total_price DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (property_id) REFERENCES Properties(id)
);

--  Payments table
CREATE TABLE Payments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT,
    amount DECIMAL(10, 2),
    payment_method VARCHAR(50),
    payment_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (booking_id) REFERENCES Bookings(id)
);

-- Indexes
CREATE INDEX idx_user_id ON Properties(user_id);
CREATE INDEX idx_property_id ON Bookings(property_id);
CREATE INDEX idx_booking_id ON Payments(booking_id);
