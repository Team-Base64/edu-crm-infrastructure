CREATE TYPE SOCIAL AS ENUM('tg', 'vk');

CREATE TABLE
    teachers (
        id SERIAL PRIMARY KEY,
        login VARCHAR(50) UNIQUE NOT NULL,
        password VARCHAR(30),
        name VARCHAR(100) NOT NULL
    );

CREATE TABLE
    students (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        socialType SOCIAL NOT NULL
    );

CREATE TABLE
    chats (
        id SERIAL PRIMARY KEY,
        teacherID INT REFERENCES teachers (id) ON DELETE CASCADE,
        studentID INT REFERENCES students (id) ON DELETE CASCADE,
        UNIQUE (teacherID, studentID)
    );

CREATE TABLE
    messages (
        id SERIAL PRIMARY KEY,
        chatID INT REFERENCES chats (id) ON DELETE CASCADE,
        text TEXT NOT NULL,
        isAuthorTeacher BOOLEAN NOT NULL,
        attaches VARCHAR[] NOT NULL DEFAULT ARRAY[]::VARCHAR[],
        time TIMESTAMP NOT NULL,
        isRead BOOLEAN NOT NULL DEFAULT FALSE
    );

CREATE TABLE
    classes (
        id SERIAL PRIMARY KEY,
        teacherID INT REFERENCES teachers (id) ON DELETE CASCADE,
        title VARCHAR(100) NOT NULL,
        description TEXT,
        inviteToken CHAR(10) UNIQUE NOT NULL
    );

CREATE TABLE
    classes_students (
        id SERIAL PRIMARY KEY,
        classID INT REFERENCES classes (id) ON DELETE CASCADE,
        studentID INT REFERENCES students (id) ON DELETE CASCADE,
        UNIQUE (classID, studentID)
    );

CREATE TABLE
    posts (
        id SERIAL PRIMARY KEY,
        classID INT REFERENCES classes (id) ON DELETE CASCADE,
        text TEXT,
        attaches VARCHAR[] NOT NULL DEFAULT ARRAY[]::VARCHAR[],
        time TIMESTAMP NOT NULL
    );

CREATE TABLE
    homeworks (
        id SERIAL PRIMARY KEY,
        classID INT REFERENCES classes (id) ON DELETE CASCADE,
        title VARCHAR(100) NOT NULL,
        description TEXT,
        createTime TIMESTAMP NOT NULL,
        deadlineTime TIMESTAMP NOT NULL,
        file VARCHAR(100)
    );

CREATE TABLE
    solutions (
        id SERIAL PRIMARY KEY,
        hwID INT REFERENCES homeworks (id) ON DELETE CASCADE,
        studentID INT REFERENCES students (id) ON DELETE CASCADE,
        text TEXT,
        time TIMESTAMP NOT NULL,
        file VARCHAR(100)
    );
