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