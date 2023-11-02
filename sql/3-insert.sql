INSERT INTO teachers (login, name, password) VALUES
('art@art',	'aaa', '123');

INSERT INTO students (name) VALUES
('bbb'),
('bbb2');

INSERT INTO chats (teacherID, studentID) VALUES
(1, 1),
(1, 2);

INSERT INTO messages (chatID, text, isAuthorTeacher, time, isRead) VALUES
(1, 'mes1', true, '2017-03-17 19:43:35.178882-07', true),
(1, 'mes2', false, '2020-03-17 19:22:01.178882-07', false),
(2, 'mes21', true, '2017-03-17 19:43:35.178882-07', true),
(2, 'mes22', false, '2020-03-17 19:22:01.178882-07', false);

INSERT INTO classes (teacherID, title, description, inviteToken) VALUES
(1, 'Class 1', 'My first class', '1234567890'),
(1, 'Class 2', 'My second class', 'qwertyuiop');
