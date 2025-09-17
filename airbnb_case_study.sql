use airbnb_db;
-- 1.Count total listings:
SELECT COUNT(*) AS total_listings FROM listings;

-- 2.Count listings per room type
SELECT room_type, COUNT(*) AS total
FROM listings
GROUP BY room_type
ORDER BY total DESC;

-- 3.Average price by neighbourhood group:
SELECT neighbourhood_group, AVG(price) AS avg_price
FROM listings
GROUP BY neighbourhood_group;

-- 4.Top 10 most expensive listings:
SELECT id, name, price, neighbourhood_group, room_type
FROM listings
ORDER BY price DESC
LIMIT 10;

-- 5.Top 10 hosts with the most listings:
SELECT host_id, host_name, COUNT(*) AS total_listings
FROM listings
GROUP BY host_id, host_name
ORDER BY total_listings DESC
LIMIT 10;

-- 6.Neighbourhood with highest average review count
SELECT neighbourhood, AVG(number_of_reviews) AS avg_reviews
FROM listings
GROUP BY neighbourhood
ORDER BY avg_reviews DESC
LIMIT 10;

-- 7.Average price per room type in each neighbourhood group:
SELECT neighbourhood_group, room_type, AVG(price) AS avg_price
FROM listings
GROUP BY neighbourhood_group, room_type
ORDER BY neighbourhood_group, avg_price DESC;

 --  8.Availability trend — % of listings available all year (365 days):
 SELECT 
    COUNT(CASE WHEN availability_365 = 365 THEN 1 END) * 100.0 / COUNT(*) AS percent_available_all_year
FROM listings;

-- 9.Detect abnormal minimum nights (fraud detection):
SELECT id, name, host_name, minimum_nights
FROM listings
WHERE minimum_nights > 365
ORDER BY minimum_nights DESC;

--  10.Most popular neighbourhoods by total reviews:
SELECT neighbourhood, SUM(number_of_reviews) AS total_reviews
FROM listings
GROUP BY neighbourhood
ORDER BY total_reviews DESC
LIMIT 10;



