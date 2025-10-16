-- Query to list all transactions for a given account number, most recent first
SELECT *
FROM transactions
WHERE account_number = $1 -- (or use a question mark ? or :account_number depending on client)
ORDER BY transaction_date DESC;
