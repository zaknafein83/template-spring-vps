-- Migrazione iniziale.
-- Esempio:
-- CREATE TABLE users (
--   id BIGSERIAL PRIMARY KEY,
--   email VARCHAR(255) UNIQUE NOT NULL,
--   created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
-- );

CREATE TABLE IF NOT EXISTS _bootstrap (
  initialized_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
INSERT INTO _bootstrap (initialized_at) VALUES (NOW());
