
-- DROP VIEW cardholder_transactions_below2;

-- CREATE VIEW cardholder_transactions_below2 AS
-- (SELECT *
-- FROM transaction AS a
-- INNER JOIN credit_card AS b ON a.transaction_card = b.card_number
-- INNER JOIN card_holder as c on b.cardholder_id = c.cardholder);

-- SELECT cardholder_name, COUNT(*) FROM cardholder_transactions_below2 WHERE transaction_amount < 2
-- GROUP BY cardholder_name;

-- DROP VIEW cardholder_transactions_between7_9;

-- CREATE VIEW cardholder_transactions_between7_9 AS
-- SELECT transaction_amount 
-- FROM transaction AS a
-- INNER JOIN credit_card AS b ON a.transaction_card = b.card_number
-- INNER JOIN card_holder as c on b.cardholder_id = c.cardholder
-- WHERE (EXTRACT(hour FROM transaction_date) < 9 AND EXTRACT(hour FROM transaction_date) > 7)

-- SELECT * FROM cardholder_transactions_between7_9
-- ORDER BY transaction_amount DESC;

-- DROP VIEW cardholder_transactions_between_not7_9;

-- CREATE VIEW cardholder_transactions_between_not7_9 AS
-- SELECT transaction_amount 
-- FROM transaction AS a
-- INNER JOIN credit_card AS b ON a.transaction_card = b.card_number
-- INNER JOIN card_holder as c on b.cardholder_id = c.cardholder
-- WHERE NOT (EXTRACT(hour FROM transaction_date) < 9 AND EXTRACT(hour FROM transaction_date) > 7)

-- SELECT * FROM cardholder_transactions_between_not7_9
-- ORDER BY transaction_amount DESC
-- LIMIT 1000;

-- DROP VIEW merchants_top100_less2dollars

-- CREATE VIEW merchants_top100_less2dollars AS
-- SELECT *
-- FROM transaction AS a
-- INNER JOIN merchant AS b ON a.transaction_merchant = b.merchant_id
-- WHERE transaction_amount < 2

-- SELECT merchant_name,COUNT(*) AS "transaction_count" FROM merchants_top100_less2dollars
-- GROUP BY merchant_name
-- ORDER BY transaction_count DESC;
