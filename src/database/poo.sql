-- Active: 1690551427412@@127.0.0.1@3306
CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    created_at TEXT NOT NULL
);
drop TABLE users;
CREATE TABLE accounts (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    owner_id TEXT NOT NULL,
    balance REAL DEFAULT 0 NOT NULL,
    created_at TEXT NOT NULL,
    FOREIGN KEY (owner_id) REFERENCES users (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
drop TABLE accounts;
INSERT INTO users (id, name, email, password,created_at)
VALUES
	('u001', 'Fulano', 'fulano@email.com', 'fulano123', datetime('now')),
	('u002', 'Beltrana', 'beltrana@email.com', 'beltrana00',datetime('now'));

INSERT INTO accounts (id, owner_id,created_at)
VALUES
	('a001', 'u001',datetime('now')),
	('a002', 'u002',datetime('now'));

SELECT * FROM accounts;
SELECT * FROM users;