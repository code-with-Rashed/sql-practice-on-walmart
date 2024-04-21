-- 1. How many unique customer types does the data have ?

SELECT
    DISTINCT `customer_type`
FROM
    `sales`;

-- 2. How many unique payment methods does the data have ?

SELECT DISTINCT
    `payment`
FROM
    `sales`;

-- 3. What is the most common customer type ?

SELECT
    `customer_type`,
    COUNT(*) AS total
FROM
    `sales`
GROUP BY
    `customer_type`
ORDER BY
    `total`
DESC;

-- 4. Which customer  type buys the most ?

SELECT
    `customer_type`,
    COUNT(*) AS total_buys
FROM
    `sales`
GROUP BY
    `customer_type`
ORDER BY
    `total_buys`
DESC;

-- 5. What is the gender of most of the customers ?

SELECT
    `gender`,
    COUNT(*) AS gender_count
FROM
    `sales`
GROUP BY
    `gender`
ORDER BY
    `gender_count`
DESC;

-- 6. What is the gender distribution per branch ?

SELECT
    `gender`,
    `branch`,
    COUNT(*) AS distributed
FROM
    `sales`
GROUP BY `gender`,`branch` ORDER BY distributed DESC;

-- 7. Which time of the day do customers give most rattings ?

SELECT
    `time_of_day`,
    AVG(rating) average_rating
FROM
    `sales`
GROUP BY
    `time_of_day`
ORDER BY
    `average_rating`;

-- 8. Which time of the day do customers give most rattings per branch ?

SELECT
    `time_of_day`,
    `branch`,
    ROUND(AVG(rating),
    2) average_rating
FROM
    `sales`
GROUP BY
    `time_of_day`,
    `branch`
ORDER BY
    `average_rating`
DESC;

-- 9. Which day of the week has the best avg rattings ?

SELECT
    `day_name`,
    AVG(rating) AS best_rating_day
FROM
    `sales`
GROUP BY
    `day_name`
ORDER BY
    `best_rating_day`
DESC;

-- 10. Which day of the week has the best average rattings per branch ?

SELECT
    `day_name`,
    `branch`,
    ROUND(AVG(rating),
    2) AS branch_wise_best_rating_day
FROM
    `sales`
GROUP BY
    `day_name`,
    `branch`
ORDER BY
    `branch_wise_best_rating_day`
DESC;