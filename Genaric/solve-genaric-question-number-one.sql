-- Genaric Question Number 1
-- Add a new column named time_of_day to give insight of sales in the Morning, Afternoon and Evening.

ALTER TABLE
    `sales` ADD COLUMN time_of_day VARCHAR(15);
    
UPDATE
    `sales`
SET
    `time_of_day` =(
        CASE WHEN `time` BETWEEN '00:00:00' AND '12:00:00' THEN 'Morning' WHEN `time` BETWEEN '12:00:00' AND '13:00:00' THEN 'Afternoon' ELSE 'Evening'
    END
);
