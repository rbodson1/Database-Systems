# 1 
SELECT distinct branch_city 
FROM branch;

# 2
SELECT *
FROM customer;

# 3
SELECT account_number
FROM account
WHERE balance > 40000;

# 4
SELECT customer_name, customer_street
FROM customer
WHERE customer_name like "G%";

# 5
SELECT branch_name
FROM branch
WHERE branch_city = "boston" or branch_city = "pittsburgh";

# 6
SELECT branch_name
FROM branch
WHERE assets between 200000 and 700000;

# 7
SELECT account_number, branch_number
FROM account
ORDER BY balance desc;

# 8
SELECT loan_number,branch_number,amount*1.15 AS new_amount
FROM loan;

# 9
SELECT count(*)
FROM customer;

# 10
SELECT max(assets), min(assets) 
FROM branch;

# 11
SELECT avg(assets)
FROM branch
WHERE branch_city = "Atlanta";

# 12
SELECT branch_number, sum(amount)
FROM loan
GROUP BY branch_number;

# 13
SELECT branch_number, min(amount)
FROM loan
WHERE amount > 150000
GROUP BY branch_number;

# 14
SELECT branch_number
FROM loan AS l, borrower AS b, customer AS c
WHERE b.loan_number = l.loan_number AND b.customer_name = c.customer_name AND b.customer_name = "Hayes";

# 15
SELECT sum(amount)
FROM loan AS l, borrower AS b, customer AS c
WHERE b.loan_number = l.loan_number AND b.customer_name = c.customer_name AND b.customer_name = "Smith";

# 16
SELECT balance
FROM account AS a, loan AS l
WHERE a.branch_number = l.branch_number AND loan_number = "L-14";

# 17
SELECT branch_city
FROM branch AS b, loan AS l
WHERE b.branch_number = l.branch_number
GROUP BY branch_city 
HAVING count(*) > 1;


       
 
	  


