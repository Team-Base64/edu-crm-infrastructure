CREATE TABLE
    bots (
        id serial PRIMARY KEY,
        token varchar NOT NULL UNIQUE,
        link varchar NOT NULL UNIQUE
    );

CREATE TABLE
    users (
        id serial PRIMARY KEY,
        chat_id INT NULL UNIQUE,
        student_id INT NOT NULL,
        user_id INT NOT NULL,
        class_id INT NOT NULL,
        bot_id INT REFERENCES bots (id) ON DELETE CASCADE,
        UNIQUE (student_id, class_id)
    );
