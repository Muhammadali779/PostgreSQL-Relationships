CREATE TABLE tg_bot(
    id BIGINT PRIMARY KEY,
    name TEXT,
    content TEXT
);

CREATE TABLE tg_users(
    id BIGINT PRIMARY KEY,
    user_name VARCHAR(256),
    bot_id BIGINT,

    FOREIGN KEY(bot_id) REFERENCES tg_bot(id) ON DELETE CASCADE
);


