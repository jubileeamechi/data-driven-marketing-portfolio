-- Jubilee Amechi
-- SQL Project: Analyzing Marketing Campaign Performance
-- Dataset includes Customers, Campaigns, and Transactions
-- Objective: Analyze marketing campaign performance and ROI


-- 1. Create the database
CREATE DATABASE IF NOT EXISTS MarketingAnalysis;
USE MarketingAnalysis;

-- 2. Create Customers table
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    age INT,
    location VARCHAR(50) NOT NULL,
    customer_segment VARCHAR(50) NOT NULL
);

-- 3. Create Campaigns table
DROP TABLE IF EXISTS Campaigns;
CREATE TABLE Campaigns (
    campaign_id INT PRIMARY KEY,
    campaign_name VARCHAR(100),
    campaign_cost DECIMAL(10,2)
);

-- 4. Create Transactions table
DROP TABLE IF EXISTS Transactions;
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    campaign_id INT,
    customer_id INT,
    purchase_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (campaign_id) REFERENCES Campaigns(campaign_id)
);

-- 5. Insert sample Customers data (first 125 customers shown)
INSERT INTO Customers (customer_id, age, location, customer_segment) VALUES
(1, 63, 'Harrisonton', 'New'),
(2, 40, 'Port Edward', 'Returning'),
(3, 50, 'Lake Tannermouth', 'Returning'),
(4, 36, 'Lake John', 'New'),
(5, 61, 'Chrismouth', 'New'),
(6, 57, 'Lake Rachel', 'New'),
(7, 32, 'Townsendview', 'New'),
(8, 37, 'North Wendy', 'Returning'),
(9, 53, 'West Timothy', 'Returning'),
(10, 25, 'North Anthonytown', 'New'),
(11, 43, 'North Jennifer', 'Returning'),
(12, 33, 'Trujilloshire', 'New'),
(13, 61, 'Timothystad', 'New'),
(14, 61, 'North Danielside', 'Returning'),
(15, 58, 'Craigland', 'Returning'),
(16, 35, 'Alyssaville', 'New'),
(17, 20, 'Thomasport', 'New'),
(18, 58, 'Conradburgh', 'New'),
(19, 38, 'Torresside', 'New'),
(20, 53, 'Jaychester', 'New'),
(21, 32, 'Potterfurt', 'New'),
(22, 23, 'East Tracyport', 'Returning'),
(23, 62, 'West Maryton', 'New'),
(24, 55, 'South Laurenville', 'New'),
(25, 55, 'Meganstad', 'New'),
(26, 27, 'Delgadostad', 'Returning'),
(27, 26, 'Port Michael', 'New'),
(28, 59, 'Barkerfort', 'New'),
(29, 35, 'Meganport', 'Returning'),
(30, 22, 'Michaelborough', 'New'),
(31, 26, 'Troychester', 'Returning'),
(32, 57, 'Lake Dianaside', 'Returning'),
(33, 22, 'Myersland', 'Returning'),
(34, 21, 'Boydchester', 'New'),
(35, 64, 'North Mathewborough', 'Returning'),
(36, 46, 'Hernandezside', 'New'),
(37, 19, 'South Jamesville', 'New'),
(38, 23, 'East Matthew', 'Returning'),
(39, 42, 'Zacharyport', 'New'),
(40, 54, 'East Paul', 'New'),
(41, 47, 'Hopkinsland', 'Returning'),
(42, 35, 'North Robertshire', 'Returning'),
(43, 36, 'Carrollborough', 'Returning'),
(44, 43, 'West Kathyshire', 'New'),
(45, 61, 'South Juliamouth', 'New'),
(46, 21, 'West Ashleyland', 'Returning'),
(47, 46, 'New Kathrynfort', 'New'),
(48, 34, 'Pratttown', 'Returning'),
(49, 21, 'Goodwinchester', 'Returning'),
(50, 51, 'Phillipsmouth', 'New'),
(51, 64, 'Jenniferview', 'Returning'),
(52, 35, 'Kristinahaven', 'New'),
(53, 60, 'Melissatown', 'Returning'),
(54, 53, 'Heatherberg', 'Returning'),
(55, 26, 'Paulton', 'New'),
(56, 33, 'Allisonton', 'Returning'),
(57, 57, 'Port Philipfurt', 'Returning'),
(58, 19, 'South Amy', 'Returning'),
(59, 30, 'Gallowaymouth', 'Returning'),
(60, 49, 'Fosterport', 'New'),
(61, 46, 'South Hollyburgh', 'Returning'),
(62, 50, 'South Michaelport', 'New'),
(63, 54, 'Port Susanside', 'New'),
(64, 19, 'Baileyport', 'Returning'),
(65, 62, 'Lake Scott', 'New'),
(66, 49, 'North Gregorymouth', 'Returning'),
(67, 44, 'Larsenland', 'New'),
(68, 54, 'Wilsontown', 'New'),
(69, 55, 'Kimstad', 'New'),
(70, 54, 'Port David', 'Returning'),
(71, 41, 'Michaelburgh', 'Returning'),
(72, 22, 'South Bethanymouth', 'Returning'),
(73, 61, 'East Lindaport', 'Returning'),
(74, 45, 'West Sarahstad', 'New'),
(75, 53, 'Kathrynshire', 'New'),
(76, 60, 'Garcialand', 'New'),
(77, 35, 'Kristenstad', 'Returning'),
(78, 42, 'New Elizabethhaven', 'New'),
(79, 29, 'Chelseamouth', 'New'),
(80, 24, 'Valentineborough', 'Returning'),
(81, 50, 'Caseyburgh', 'New'),
(82, 53, 'Acostaville', 'Returning'),
(83, 38, 'Alexanderview', 'Returning'),
(84, 33, 'Chaneyville', 'New'),
(85, 40, 'Port Anthony', 'New'),
(86, 63, 'Lake Juliechester', 'New'),
(87, 20, 'Sharonborough', 'New'),
(88, 28, 'Evanberg', 'New'),
(89, 37, 'Lake Juliehaven', 'Returning'),
(90, 33, 'Harrisfurt', 'New'),
(91, 63, 'New Jeffreyport', 'Returning'),
(92, 22, 'Lake Jeremy', 'Returning'),
(93, 28, 'Darlenefort', 'New'),
(94, 29, 'Lake Christinafurt', 'Returning'),
(95, 53, 'Brownville', 'Returning'),
(96, 35, 'Angelaland', 'Returning'),
(97, 41, 'West Danieltown', 'New'),
(98, 62, 'Rodriguezport', 'Returning'),
(99, 59, 'New Francesport', 'New'),
(100, 29, 'New Dana', 'New'),
(101, 46, 'New Leonardstad', 'New'),
(102, 60, 'Port Elizabeth', 'Returning'),
(103, 60, 'Frankshire', 'Returning'),
(104, 58, 'Stephaniefort', 'New'),
(105, 22, 'South Richardport', 'Returning'),
(106, 59, 'East Edward', 'New'),
(107, 62, 'South Michaelport', 'New'),
(108, 61, 'Jaredland', 'Returning'),
(109, 27, 'West Maxwell', 'Returning'),
(110, 30, 'New David', 'Returning'),
(111, 19, 'Lake Jessicaborough', 'Returning'),
(112, 35, 'New Courtney', 'New'),
(113, 35, 'West Carolview', 'Returning'),
(114, 30, 'Heatherburgh', 'Returning'),
(115, 37, 'South Katherineton', 'Returning'),
(116, 63, 'Sawyerfort', 'New'),
(117, 18, 'Diazberg', 'Returning'),
(118, 63, 'Debbiebury', 'New'),
(119, 59,'West Margaret', 'Returning'),
(120, 53, 'Birdmouth', 'Returning'),
(121, 33, 'Port Dillonberg', 'Returning'),
(122, 51, 'West Benjamin', 'Returning'),
(123, 32, 'South Fabius', 'Returning'),
(124, 58, 'Glenport', 'Returning'),
(125, 45, 'New Kathleenmouth', 'New');

-- 6. Insert Campaigns data
INSERT INTO Campaigns (campaign_id, campaign_name, campaign_cost) VALUES
(1, 'Summer Sale 2024', 5733),
(2, 'Spring Promo 2024', 9444),
(3, 'Product Launch 2023', 7210),
(4, 'Back-to-School Campaign', 16917),
(5, 'Summer Clearance 2023', 5330),
(6, 'New Year Offer 2023', 4389),
(7, 'Holiday Discount 2023', 6201),
(8, 'Autumn Sale 2023', 6657),
(9, 'End-of-Year Sale 2024', 10542),
(10, 'Spring Clearance 2024', 13984);

-- 7. Insert Transactions data (using only valid customer_ids 1–125)
INSERT INTO Transactions (transaction_id, campaign_id, customer_id, purchase_amount) VALUES
(1, 9, 62, 453.19),
(2, 8, 35, 172.94),
(3, 3, 83, 152.88),
(4, 10, 21, 75.69),
(5, 4, 20, 254.84),
(6, 7, 84, 339.47),
(7, 1, 38, 386.70),
(8, 2, 74, 352.25),
(9, 3, 91, 167.52),
(10, 10, 117, 63.22),
(11, 7, 110, 226.81),
(12, 1, 29, 435.17),
(13, 5, 16, 270.44),
(14, 4, 59, 137.85),
(15, 6, 92, 217.21),
(16, 10, 9, 394.22),
(17, 2, 107, 372.25),
(18, 8, 91, 85.12),
(19, 7, 4, 244.07),
(20, 8, 89, 18.02),
(21, 8, 51, 42.30),
(22, 3, 92, 460.67),
(23, 5, 86, 168.46),
(24, 4, 109, 351.38),
(25, 2, 110, 322.74),
(26, 3, 118, 171.44),
(27, 6, 1, 200.00),
(28, 1, 7, 95.00),
(29, 9, 120, 500.00),
(30, 10, 121, 320.75);


-- 1. Total Revenue Generated by Each Campaign - Measures the gross revenue impact of each campaign.
-- KPI: Total Revenue Generated by Each Campaign
-- This query calculates the total revenue (purchase amount) generated from each campaign
SELECT 
    c.campaign_name,
    SUM(t.purchase_amount) AS total_revenue
FROM 
    Campaigns c
JOIN 
    Transactions t ON c.campaign_id = t.campaign_id
GROUP BY 
    c.campaign_name
ORDER BY 
    total_revenue DESC;

-- 2. Return on Investment (ROI) per Campaign - Tells you which campaigns were most profitable, regardless of spend size.
--  KPI: ROI = (Revenue - Cost) / Cost
-- This query calculates ROI for each campaign by comparing revenue and campaign cost
SELECT 
    c.campaign_name,
    c.campaign_cost,
    COALESCE(SUM(t.purchase_amount), 0) AS total_revenue,
    ROUND(((COALESCE(SUM(t.purchase_amount), 0) - c.campaign_cost) / c.campaign_cost) * 100, 2) AS ROI_percentage
FROM 
    Campaigns c
LEFT JOIN 
    Transactions t ON c.campaign_id = t.campaign_id
GROUP BY 
    c.campaign_name, c.campaign_cost
ORDER BY 
    ROI_percentage DESC;

-- 3. Customer Segment Performance - Helps in targeting the most valuable segments in future campaigns.
-- KPI: Revenue Generated by Each Customer Segment
-- This query shows how much each customer segment contributed to revenue
SELECT 
    cu.customer_segment,
    ROUND(SUM(t.purchase_amount), 2) AS total_revenue
FROM 
    Customers cu
JOIN 
    Transactions t ON cu.customer_id = t.customer_id
GROUP BY 
    cu.customer_segment
ORDER BY 
    total_revenue DESC;
    
   --  4. Campaign Revenue by Location - Identifies top-performing regions to scale campaigns geographically.
-- KPI: Revenue by City or State (Location)
-- This query shows total revenue generated by customers in each location (city or state)
SELECT 
    cu.location AS customer_location,
    ROUND(SUM(t.purchase_amount), 2) AS total_revenue
FROM 
    Customers cu
JOIN 
    Transactions t ON cu.customer_id = t.customer_id
GROUP BY 
    cu.location  -- `location` must be in the `GROUP BY` clause
ORDER BY 
    total_revenue DESC
LIMIT 10;

-- 5. Campaign Reach (Number of Customers) - Measures audience reach per campaign (critical for growth strategies).
-- KPI: Number of Unique Customers per Campaign
-- This query shows how many unique customers participated in each campaign
SELECT 
    c.campaign_name,
    COUNT(DISTINCT t.customer_id) AS customers_reached
FROM 
    Campaigns c
LEFT JOIN 
    Transactions t ON c.campaign_id = t.campaign_id
GROUP BY 
    c.campaign_name
ORDER BY 
    customers_reached DESC;
    
    --  6. Average Revenue Per Customer - Indicates customer value (if a few customers driving sales or many)
-- KPI: Total Revenue / Number of Customers
-- Measures how much revenue is generated on average per customer
SELECT 
    ROUND(SUM(purchase_amount) / COUNT(DISTINCT customer_id), 2) AS avg_revenue_per_customer
FROM 
    Transactions;


