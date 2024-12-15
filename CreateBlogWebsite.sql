CREATE DATABASE IF NOT EXISTS BlogWebsite;

USE BlogWebsite;

-- Users Table for login information
CREATE TABLE Users (
                       user_id INT AUTO_INCREMENT PRIMARY KEY,       -- Unique identifier for each user
                       username VARCHAR(50) NOT NULL UNIQUE,         -- Username, must be unique
                       email VARCHAR(100) NOT NULL UNIQUE,           -- Email, must be unique
                       password_hash VARCHAR(255) NOT NULL,          -- Storing password securely (hashed)
                       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp for when the user is created
                       updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- For tracking updates
);

-- User Profiles Table for bio, location, and age
CREATE TABLE UserProfiles (
                              profile_id INT AUTO_INCREMENT PRIMARY KEY,    -- Unique profile identifier
                              user_id INT NOT NULL,                         -- Foreign key linking to Users table
                              bio TEXT,                                     -- Short bio about the user
                              location VARCHAR(100),                        -- User's location
                              age INT,                                      -- User's age (optional)
                              created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Profile creation timestamp
                              updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Profile update timestamp
                              FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE -- Ensuring referential integrity
);

-- Blog Posts Table
CREATE TABLE BlogPosts (
                           post_id INT AUTO_INCREMENT PRIMARY KEY,       -- Unique identifier for the blog post
                           user_id INT NOT NULL,                         -- Foreign key linking to Users table
                           title VARCHAR(255) NOT NULL,                  -- Title of the blog post
                           content TEXT NOT NULL,                        -- Content of the blog post
                           created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Blog post creation timestamp
                           updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Blog post update timestamp
                           FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE -- Delete posts if user is deleted
);