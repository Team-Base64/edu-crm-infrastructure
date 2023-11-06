INSERT INTO
  teachers (login, name, password)
VALUES
  ('art@art', 'mockTeacher', '123');

INSERT INTO
  students (name, socialType)
VALUES
  ('mockStudent1', 'tg'),
  ('mockStudent2', 'vk');

INSERT INTO
  chats (teacherID, studentID)
VALUES
  (1, 1),
  (1, 2);

INSERT INTO
  messages (chatID, text, isAuthorTeacher, createTime, isRead)
VALUES
  (
    1,
    'mes1',
    true,
    '2017-03-17 19:43:35.178882-07',
    true
  ),
  (
    1,
    'mes2',
    false,
    '2020-03-17 19:22:01.178882-07',
    false
  ),
  (
    2,
    'mes21',
    true,
    '2017-03-17 19:43:35.178882-07',
    true
  ),
  (
    2,
    'mes22',
    false,
    '2020-03-17 19:22:01.178882-07',
    false
  );

INSERT INTO
  classes (teacherID, title, description, inviteToken)
VALUES
  (1, 'Class 1', 'My first class', '1234567890'),
  (1, 'Class 2', 'My second class', 'qwertyuiop');

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
    'Texttexttext texttext',
    '{"/qwe/qwe", "/ewq/ewq"}',
    '2020-03-17 19:22:01.178882-07'
  ),
  (
    2,
    'OJNSdnd dofnwoe',
    '{"/qwe/qwe"}',
    '2020-03-17 19:22:01.178882-07'
  ),
  (
    2,
    'OJNSdnd dofnwoe',
    '{}',
    '2020-03-17 19:22:01.178882-07'
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
