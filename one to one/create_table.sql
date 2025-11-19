-- CREATE TABLE bookshelf(
--     id BIGINT PRIMARY KEY,
--     name TEXT,
--     creator TEXT
-- );

CREATE TABLE students(
    id BIGINT PRIMARY KEY,
    name TEXT,
    book_id BIGINT UNIQUE,

    FOREIGN KEY (book_id) REFERENCES bookshelf(id) ON DELETE CASCADE
);