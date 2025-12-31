CREATE TABLE IF NOT EXISTS consumer_behavior (
    customer_id VARCHAR(50) PRIMARY KEY, -- Change to INT if the CSV uses numbers
    age INT NOT NULL, 
    gender VARCHAR(20),
    income_level VARCHAR(20),
    marital_status VARCHAR(20),
    education_level VARCHAR(50),
    occupation VARCHAR(100),
    location VARCHAR(100),
    purchase_category VARCHAR(100),
    purchase_amount VARCHAR, -- Better for money
    frequency_of_purchase INT,
    purchase_channel VARCHAR(50),
    brand_loyalty INT CHECK (brand_loyalty BETWEEN 1 AND 5), -- Ensures data quality
    product_rating INT CHECK (product_rating BETWEEN 1 AND 5),
    research_time_spent INT,
    social_media_influence VARCHAR(20),
    discount_sensitivity VARCHAR(30),
    return_rate DECIMAL(5, 2),
    customer_satisfaction INT,
    ad_engagement VARCHAR(20),
    device_used VARCHAR(50),
    payment_method VARCHAR(50),
    time_of_purchase TIMESTAMP,
    discount_used BOOLEAN,
    is_loyalty_member BOOLEAN,
    purchase_intent VARCHAR(50),
    shipping_preference VARCHAR(50),
    payment_frequency VARCHAR(50),
    days_to_decision INT
);
