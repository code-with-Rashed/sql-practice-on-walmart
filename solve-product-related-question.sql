-- 1. How many unique product lines does the data have ?

SELECT
    `product_line`
FROM
   `sales`
GROUP BY
    `product_line`;

-- 2. What is the most common payment method ?

SELECT
    `payment`
FROM
    `sales`
GROUP BY
    `payment`;

-- 3. What is the most selling product line ?

SELECT
    `product_line`,
    SUM(`quantity`) AS most_selling_product_line
FROM
    `sales`
GROUP BY
    `product_line`
ORDER BY
    `most_selling_product_line` DESC;

-- 4. What is the total revenue by month ?

SELECT
    `month_name` AS month,
    SUM(total) AS total_revenue
FROM
    `sales`
GROUP BY
    `month_name`
ORDER BY
    `total_revenue`
DESC;

-- 5. What month had the largest COGS ?

SELECT
    `month_name` AS month,
    SUM(cogs) AS cogs
FROM
    `sales`
GROUP BY
    `month_name`
ORDER BY
    `cogs`
DESC;

-- 6. What product line had the largest revenue ?

SELECT
    `product_line`,
    SUM(total) AS total_revenue
FROM
    `sales`
GROUP BY
    `product_line`
ORDER BY
    `total_revenue`
DESC;

-- 7. What is the city with the largest revenue ?

SELECT
    `city`,
    `branch`,
    SUM(total) AS total_revenue
FROM
    `sales`
GROUP BY
    `city`,
    `branch`
ORDER BY
    `total_revenue`
DESC;

-- 8. What product line had the largest VAT ?

SELECT
    `product_line`,
    AVG(tax_pct) AS avg_tax
FROM
    `sales`
GROUP BY
    `product_line`
ORDER BY
    `avg_tax`
DESC;

-- 9. Fetch each product line and add a column to those product 
-- line showing "Good", "Bad". Good if its greater than average sales.

SELECT
    AVG(quantity) avg_quantity
FROM
    `sales`;
SELECT
    `product_line`,
    CASE WHEN AVG(quantity) > 6 THEN "Good" ELSE "Bad"
END AS `remark`
FROM
    `sales`
GROUP BY
    `product_line`;

-- 10. Which branch sold more products than average product sold ?

SELECT
    `branch`,
    SUM(quantity) AS quantity
FROM
    `sales`
GROUP BY
    `branch`
HAVING
    `quantity` >(
    SELECT
        AVG(quantity)
    FROM
        `sales`
)
ORDER BY
    `quantity`
DESC;

-- 11. What is the most common product line by gender ?

SELECT
    `product_line`,
    `gender`,
    COUNT(gender) AS total
FROM
    `sales`
GROUP BY
    `product_line`,
    `gender`
ORDER BY
    `total`
DESC;

-- 12. What is the average rating of each product line ?

SELECT
    `product_line`,
    AVG(rating) AS avg_rating
FROM
    `sales`
GROUP BY
    `product_line`
ORDER BY
    `avg_rating`
DESC;
