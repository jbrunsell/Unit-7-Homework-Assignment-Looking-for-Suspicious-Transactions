DROP VIEW IF EXISTS cardholder_25_transactions CASCADE;
CREATE VIEW cardholder_25_transactions AS
        SELECT *
        FROM transaction AS a
        INNER JOIN credit_card AS b ON a.transaction_card = b.card_number
        INNER JOIN card_holder as c on b.cardholder_id = c.cardholder;

SELECT * FROM cardholder_25_transactions WHERE (cardholder_id=25) AND (transaction_date > DATE '2018-01-01' AND transaction_date < DATE '2018-06-30');