#!/bin/sh

psql --username "${POSTGRES_USER}" --dbname "${POSTGRES_DB}" <<-EOSQL
CREATE TABLE IF NOT EXISTS "users" (
    id SERIAL PRIMARY KEY,
    email VARCHAR(32) NOT NULL CHECK (email <> '') UNIQUE,
    hashed_password CHAR(64) NOT NULL CHECK (hashed_password <> ''),
    hash_salt CHAR(32) NOT NULL CHECK (hash_salt <> ''),
    firstname VARCHAR(32),
    lastname VARCHAR(32)
);
EOSQL
