INSERT INTO
  teachers (login, name, password)
VALUES
  ('art@art', 'Иван Иванович', '123');

INSERT INTO
  students (name, socialType)
VALUES
  ('Ева', 'tg'),
  ('Адам', 'vk');

INSERT INTO
  classes (teacherID, title, description, inviteToken)
VALUES
  (
    1,
    'Физика 9 класс',
    'Подтягиваем знания по физике',
    '12345678'
  ),
  (
    1,
    'Математика 9 класс',
    'Готовимся к ОГЭ по математике',
    'qwertyui'
  );

INSERT INTO
  chats (teacherID, studentID, classID)
VALUES
  (1, 1, 1);

INSERT INTO
  messages (chatID, text, isAuthorTeacher, createTime, isRead)
VALUES
  (
    1,
    'Здравствуй! Как твои успех?',
    true,
    '2023-11-05 19:43:35.178882-07',
    true
  ),
  (
    1,
    'Здравствуйте! Опять получила двойку(',
    false,
    '2023-11-06 19:22:01.178882-07',
    false
  );

INSERT INTO
  classes_students (classID, studentID)
VALUES
  (1, 1),
  (2, 1),
  (2, 2);

INSERT INTO
  posts (classID, text, attaches, createTime)
VALUES
  (
    1,
    'На следующем занятии будет повторения тем 8 класса! Всем подготовиться.',
    '{"/qwe/qwe", "/ewq/ewq"}',
    '2020-03-17 19:22:01.178882-07'
  ),
  (
    2,
    'Я приболел( Занятия на ближайщую неделю отменяются.',
    '{"/qwe/qwe"}',
    '2020-03-17 19:22:01.178882-07'
  ),
  (
    2,
    'Очень важное сообщение!',
    '{}',
    '2020-03-17 19:30:01.178882-07'
  );

INSERT INTO
  homeworks (
    classID,
    title,
    description,
    createTime,
    deadlineTime,
    file
  )
VALUES
  (
    1,
    'Texttexttext texttext',
    'Texttexttext texttext Texttexttext texttext',
    '2020-03-17 19:22:01.178882-07',
    '2020-03-18 19:22:01.178882-07',
    '/qwe/qwe/qwe'
  ),
  (
    2,
    'OJNSdnd dofnwoe',
    'OJNSdnd dofnwoe OJNSdnd dofnwoe',
    '2020-03-17 19:22:01.178882-07',
    '2020-04-17 19:22:01.178882-07',
    '/ewq/ewq/ewq'
  ),
  (
    2,
    'Sddwcsd dscwefwe',
    'Sddwcsd dscwefweSddwcsd dscwefwe',
    '2020-03-17 19:22:01.178882-07',
    '2021-04-17 19:22:01.178882-07',
    '/ewq/ewq/vfe'
  );

INSERT INTO
  solutions (hwID, studentID, text, createTime, file)
VALUES
  (
    1,
    1,
    'cwefwesdef efdwefwe',
    '2020-03-17 19:40:01.178882-07',
    '/qwe/qwe/fvfd'
  ),
  (
    2,
    1,
    'wefdsfewfew',
    '2020-05-17 19:22:01.178882-07',
    '/qwe/we'
  ),
  (
    3,
    2,
    'egvdrgregergf',
    '2020-05-17 19:50:01.178882-07',
    '/qwe/weffff'
  );
