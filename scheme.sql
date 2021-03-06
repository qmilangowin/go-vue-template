CREATE TABLE IF NOT EXISTS users (
	id INTEGER NOT NULL PRIMARY KEY,
	email TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS social_tokens (
	id INTEGER NOT NULL PRIMARY KEY,
	user_id INTEGER NOT NULL,
	provider TEXT NOT NULL,
	token TEXT NOT NULL,
	UNIQUE (user_id, provider) ON CONFLICT REPLACE
);
