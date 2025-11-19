CREATE TABLE users(
    id BIGSERIAL PRIMARY KEY, 
    username VARCHAR(127) NOT NULL UNIQUE, 
    birthdate DATE 
); 

CREATE TABLE profiles ( 
    id BIGSERIAL PRIMARY KEY, 
    name VARCHAR(255) NOT NULL, 
    bio TEXT, 
    user_id BIGINT UNIQUE,

    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE 
); 

CREATE TABLE posts( 
    id BIGSERIAL PRIMARY KEY, 
    content TEXT NOT NULL, 
    user_id BIGINT,

    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL 
);

CREATE TABLE comments( 
    id BIGSERIAL PRIMARY KEY, 
    content TEXT, 
    user_id BIGINT, 
    post_id BIGINT,

    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL, 
    FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE
);
