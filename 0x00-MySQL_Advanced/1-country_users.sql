-- sql script that creates a user with the following requirements:
-- Attributes:
-- id, integer, never null, auto increment and primary key
-- email, string (255 characters), never null and unique
-- name, string (255 characters)

-- Create table users if it doesn't already exist
CREATE TABLE IF NOT EXISTS users (
    -- Define id column as an integer, auto-incrementing primary key
    id INT AUTO_INCREMENT PRIMARY KEY,
    
    -- Define email column as a string of maximum 255 characters, not null, and unique
    email VARCHAR(255) NOT NULL UNIQUE,
    
    -- Define name column as a string of maximum 255 characters
    name VARCHAR(255),
    
    -- Define country column as an enumeration type with values 'US', 'CO', and 'TN', not null,
    -- and defaulting to 'US' if not explicitly provided
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);
