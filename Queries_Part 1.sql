-- Group the transactions of each cardholder
SELECT CH.id, CH.name, COUNT(T.id), SUM(T.amount) AS total_amount FROM transaction as T
JOIN credit_card as CC on T.card = CC.card
JOIN card_holder as CH on CC.cardholder_id = CH.id
GROUP BY CH.id

-- Count the transactions that are less than $2.00 per cardholder
SELECT CH.id, CH.name, COUNT(T.id) AS transactions_count FROM transaction as T
JOIN credit_card as CC on T.card = CC.card
JOIN card_holder as CH on CC.cardholder_id = CH.id
WHERE T.amount < 2.00
GROUP BY CH.id
ORDER BY transactions_count DESC

-- Create a view of top 100 highest transactions made between 7:00 am and 9:00 am
CREATE VIEW TOP_100 AS
SELECT *, EXTRACT(HOUR FROM T.date) AS hours, EXTRACT(MINUTE FROM T.date) AS minutes FROM transaction as T
WHERE EXTRACT(HOUR FROM T.date) between 7 and 8
ORDER BY T.amount DESC
LIMIT 100

-- Top 5 merchants prone to being hacked using small transactions
CREATE VIEW TOP_5 AS
SELECT M.id, M.name, COUNT(T.id) AS transactions_count FROM transaction as T
JOIN merchant as M on T.id_merchant = M.id
WHERE T.amount < 2.00
GROUP BY M.id
ORDER BY transactions_count DESC
LIMIT 5
