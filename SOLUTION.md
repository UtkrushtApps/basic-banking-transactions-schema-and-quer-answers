# Solution Steps

1. 1. Open the existing schema or create a new SQL file where you will define or update the database tables.

2. 2. In the transactions table definition, ensure the account_number column is present and NOT NULL.

3. 3. Add a foreign key constraint to transactions.account_number that references accounts(account_number), enforcing referential integrity. Set ON DELETE CASCADE if transactions should be deleted when an account is removed.

4. 4. Create an index on the transactions.account_number column for faster look-up by account number.

5. 5. Write the SQL query that selects all columns from transactions for a specified account number, ordered by transaction_date descending (most recent first).

6. 6. Place the schema (including constraint and index) and the query in their respective .sql files as shown.

