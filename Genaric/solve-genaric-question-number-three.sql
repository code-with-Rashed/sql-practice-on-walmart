-- Genaric Question Number 3
-- Add a new column named month_name that contains the extracted Months of the year on which the given transaction took place (Jan,Feb,Mar).

ALTER TABLE
    `sales` ADD COLUMN month_name VARCHAR(15);
    
UPDATE
    `sales`
SET
    `month_name` = MONTHNAME(DATE);
