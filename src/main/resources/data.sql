CREATE TABLE IF NOT EXISTS test_table (
    id SERIAL PRIMARY KEY,
    message VARCHAR(255)
);

INSERT INTO test_table (message) VALUES ('Hello from DB');
