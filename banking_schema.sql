-- 1. Create tables (assume customers and accounts are already properly set up)

-- Transactions table definition (with new foreign key constraint)
CREATE TABLE IF NOT EXISTS transactions (
    id SERIAL PRIMARY KEY,
    account_number VARCHAR(20) NOT NULL,
    amount NUMERIC(15,2) NOT NULL,
    transaction_date TIMESTAMP NOT NULL DEFAULT now(),
    description TEXT,
    CONSTRAINT fk_account
        FOREIGN KEY (account_number)
            REFERENCES accounts(account_number)
            ON DELETE CASCADE
);

-- 2. Create index on transactions.account_number
CREATE INDEX IF NOT EXISTS idx_transactions_account_number
    ON transactions(account_number);

-- 3. Query: List all transactions for a given account (in order, most recent first)
-- :account_number is a placeholder for the desired account number
-- Example usage:
-- SELECT * FROM transactions WHERE account_number = '1234567890' ORDER BY transaction_date DESC;
