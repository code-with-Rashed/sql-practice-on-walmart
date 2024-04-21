-- 1. Number of sales made in each time of the day per weekday

SELECT
    `time_of_day`,
    COUNT(*) AS total_sales
FROM
    `sales`
WHERE
    `day_name` = 'Friday'
GROUP BY
    `time_of_day`
ORDER BY
    `total_sales`
DESC;

-- 2. Which of the customer types brings the most revenue ?

SELECT
    `customer_type`,
    SUM(total) AS total_revenue
FROM
    `sales`
GROUP BY
    `customer_type`
ORDER BY
    `total_revenue`
DESC;

-- 3. Which city has the largest tax percent / VAT (Value Added Tax) ?

SELECT
    `city`,
    ROUND(AVG(tax_pct),2) AS avg_tax_percent
FROM
    `sales`
GROUP BY
    `city`
ORDER BY
    `avg_tax_percent`
DESC;

-- 4. Which Customer type pays the most in VAT ?

SELECT
    `customer_type`,
    AVG(tax_pct) AS total_tax
FROM
    `sales`
GROUP BY
    `customer_type`
ORDER BY
    `total_tax`
DESC;