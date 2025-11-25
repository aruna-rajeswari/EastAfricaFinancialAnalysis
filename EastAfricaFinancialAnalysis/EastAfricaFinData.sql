create database EastAfricaFinData;
use EastAfricaFinData;

CREATE TABLE users (
    age INT NOT NULL,
    gender VARCHAR(20) NOT NULL,
    country VARCHAR(100) NOT NULL,
    education_level VARCHAR(50) NOT NULL,
    has_bank_account TINYINT(1) DEFAULT NULL,
    mobile_money_user VARCHAR(10) DEFAULT 'Unknown',
    loan_access VARCHAR(10) DEFAULT 'Unknown',
    monthly_income DECIMAL(10,2) DEFAULT NULL
);

show tables;
select *from users;

-- 	Count users per country.
SELECT 
    country,
    has_bank_account,
    COUNT(*) AS total_users
FROM 
    users
GROUP BY 
    country, has_bank_account
ORDER BY 
    country, has_bank_account;
    
    
    SELECT 
    country,
    has_bank_account,
    COUNT(*) AS total_users
FROM 
    users
WHERE has_bank_account = '1'
GROUP BY 
    country
ORDER BY 
    country;
    
-- 	Average income per education level    
SELECT 
    education_level,
    round(AVG(monthly_income),2) AS average_income
FROM 
    users
GROUP BY 
    education_level
ORDER BY 
    average_income DESC;

-- Correlate bank account ownership with mobile money usage.
SELECT
    has_bank_account,
    mobile_money_user,
    COUNT(*) AS total_users
FROM 
    users
GROUP BY 
    has_bank_account, 
    mobile_money_user
ORDER BY
    has_bank_account,
    mobile_money_user;
    
-- 	Segment users by financial inclusion status

SELECT
    CASE
        WHEN (has_bank_account = 1 OR mobile_money_user = 'Yes')
             AND loan_access = 'Yes' THEN 'Fully Included'
        
        WHEN (has_bank_account = 1 OR mobile_money_user = 'Yes')
             AND loan_access <> 'Yes' THEN 'Partially Included'
        
        WHEN (has_bank_account = 0 OR has_bank_account IS NULL)
             AND (mobile_money_user = 'No' OR mobile_money_user = 'Unknown')
             AND (loan_access = 'No' OR loan_access = 'Unknown') THEN 'Financially Excluded'
        
        ELSE 'Unclassified'
    END AS inclusion_status,
    COUNT(*) AS total_users
FROM users
GROUP BY inclusion_status
ORDER BY total_users DESC;

    
    