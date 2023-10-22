DROP VIEW IF EXISTS cardholder_transactions CASCADE;
CREATE VIEW cardholder_transactions AS (
        SELECT *
        FROM transaction AS a
        INNER JOIN credit_card AS b ON a.transaction_card = b.card_number
        INNER JOIN card_holder as c on b.cardholder_id = c.cardholder);
SELECT * FROM cardholder_transactions WHERE cardholder_id = 2 OR cardholder_id=18;