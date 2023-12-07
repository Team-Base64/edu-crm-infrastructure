CREATE TABLE
    teachers (
        id SERIAL PRIMARY KEY,
        login VARCHAR(50) UNIQUE NOT NULL,
        password VARCHAR(30),
        name VARCHAR(100) NOT NULL,
        OAUTH2Token VARCHAR DEFAULT NULL
    );

CREATE TABLE
    students (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        socialType VARCHAR(100) NOT NULL
    );

CREATE TABLE
    classes (
        id SERIAL PRIMARY KEY,
        teacherID INT REFERENCES teachers (id) ON DELETE CASCADE,
        title VARCHAR(100) NOT NULL,
        description TEXT,
        inviteToken CHAR(8) UNIQUE NOT NULL
    );

CREATE TABLE
    chats (
        id SERIAL PRIMARY KEY,
        teacherID INT REFERENCES teachers (id) ON DELETE CASCADE,
        studentID INT REFERENCES students (id) ON DELETE CASCADE,
        classID INT REFERENCES classes (id) ON DELETE CASCADE,
        UNIQUE (teacherID, studentID, classID)
    );

CREATE TABLE
    messages (
        id SERIAL PRIMARY KEY,
        chatID INT REFERENCES chats (id) ON DELETE CASCADE,
        text TEXT NOT NULL,
        isAuthorTeacher BOOLEAN NOT NULL,
        attaches VARCHAR[] NOT NULL DEFAULT ARRAY[]::VARCHAR[],
        createTime TIMESTAMP NOT NULL,
        isRead BOOLEAN NOT NULL DEFAULT FALSE
    );

CREATE TABLE
    posts (
        id SERIAL PRIMARY KEY,
        classID INT REFERENCES classes (id) ON DELETE CASCADE,
        text TEXT,
        attaches VARCHAR[] NOT NULL DEFAULT ARRAY[]::VARCHAR[],
        createTime TIMESTAMP NOT NULL
    );

CREATE TABLE
    homeworks (
        id SERIAL PRIMARY KEY,
        classID INT REFERENCES classes (id) ON DELETE CASCADE,
        title VARCHAR(100) NOT NULL,
        description TEXT,
        createTime TIMESTAMP NOT NULL,
        deadlineTime TIMESTAMP NOT NULL
    );

CREATE TABLE
    tasks (
        id SERIAL PRIMARY KEY,
        teacherID INT REFERENCES teachers (id) ON DELETE CASCADE,
        description TEXT,
        attaches VARCHAR[] NOT NULL DEFAULT ARRAY[]::VARCHAR[]
    );

CREATE TABLE
    homeworks_tasks (
        id SERIAL PRIMARY KEY,
        homeworkID INT REFERENCES homeworks (id) ON DELETE CASCADE,
        taskID INT REFERENCES tasks (id) ON DELETE CASCADE,
        rank INT NOT NULL,
        UNIQUE (homeworkID, rank)
    );

CREATE TABLE
    solutions (
        id SERIAL PRIMARY KEY,
        homeworkID INT REFERENCES homeworks (id) ON DELETE CASCADE,
        studentID INT REFERENCES students (id) ON DELETE CASCADE,
        text TEXT NOT NULL,
        createTime TIMESTAMP NOT NULL,
        files VARCHAR[] NOT NULL DEFAULT ARRAY[]::VARCHAR[],
        isApproved BOOLEAN DEFAULT NULL,
        teacherEvaluation TEXT NOT NULL DEFAULT ''
    );

CREATE TABLE
    calendars (
        id SERIAL PRIMARY KEY,
        teacherID INT REFERENCES teachers (id) ON DELETE CASCADE,
        idInGoogle VARCHAR NOT NULL UNIQUE
    );

CREATE TABLE
    sessions (
        id VARCHAR PRIMARY KEY,
        teacherLogin VARCHAR REFERENCES teachers (login) ON DELETE CASCADE
    );
