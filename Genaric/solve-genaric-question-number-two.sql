-- Genaric Question Number 2
-- Add a new column named day_name that contains the extracted days of the week on which the given transaction took place (Mon,Tue,Wed,Thur,Fri).

ALTER TABLE
    `sales` ADD COLUMN day_name VARCHAR(15);
    
UPDATE
    `sales`
SET
    `day_name` = DAYNAME(DATE);