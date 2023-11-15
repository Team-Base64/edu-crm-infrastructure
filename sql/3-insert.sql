INSERT INTO
  teachers (login, name, password)
VALUES
  ('art@art', 'Артем Артемович', '123');

INSERT INTO
  calendars (teacherID, idInGoogle)
VALUES
  (
    1,
    '611a7b115cb31d14e41c9909e07db425548dd3b5fa76a145f3c93ae7410bc142@group.calendar.google.com'
  );

INSERT INTO
  students (name, socialType)
VALUES
  ('Полина', 'tg'),
  ('Максим', 'vk');

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
    '{"https://educrm.us.to/filestorage/chat/urgant.jpg"}',
    '2023-10-17 19:22:01.178882-07'
  ),
  (
    2,
    'Я приболел( Занятия на ближайщую неделю отменяются.',
    '{"https://educrm.us.to/filestorage/chat/sova.jpg", "https://educrm.us.to/filestorage/chat/boleu.jpg"}',
    '2023-10-18 12:10:01.178882-07'
  ),
  (
    2,
    'Очень важное сообщение!',
    '{}',
    '2023-10-25 22:30:01.178882-07'
  );

INSERT INTO
  homeworks (
    classID,
    title,
    description,
    createTime,
    deadlineTime
  )
VALUES
  (
    1,
    'Проверочное домашнее задание.',
    'Напиши все темы, которые тебе даются тяжело.',
    '2023-11-13 17:22:01.178882-07',
    '2023-11-17 17:22:01.178882-07'
  ),
  (
    2,
    'Еженедельное домашнее задание',
    'Сегодня только одно задание. Отдыхай!',
    '2023-10-13 17:22:01.178882-07',
    '2023-10-15 17:22:01.178882-07'
  ),
  (
    2,
    'Задачи на весь месяц.',
    'Решай эти задачи по мере прохождения материла.',
    '2023-10-13 17:22:01.178882-07',
    '2023-12-20 17:22:01.178882-07'
  );

INSERT INTO
  tasks (teacherID, description, attach)
VALUES
  (
    1,
    'Задача на систему уравнений тип 20',
    'https://educrm.us.to/filestorage/homework/system.png'
  ),
  (
    1,
    'Текстовая задача тип 12',
    'https://educrm.us.to/filestorage/homework/text12.png'
  ),
  (
    1,
    'Задача с таблицей уравнений тип 5',
    'https://educrm.us.to/filestorage/homework/table5.png'
  ),
  (
    1,
    'Задача на статистику тип 10',
    'https://educrm.us.to/filestorage/homework/stat10.png'
  );

INSERT INTO
  homeworks_tasks (homeworkID, taskID, rank)
VALUES
  (2, 1, 1),
  (3, 2, 1),
  (3, 3, 2),
  (3, 4, 3);

INSERT INTO
  solutions (homeworkID, studentID, text, createTime, file)
VALUES
  (
    1,
    1,
    'Не понимаю всё(',
    '2023-11-20 17:22:01.178882-07',
    ''
  ),
  (
    2,
    1,
    'Вроде всё решил правильно',
    '2023-10-14 17:22:01.178882-07',
    'https://educrm.us.to/filestorage/solution/solpdf.pdf'
  ),
  (
    2,
    2,
    'Получилось, но не всё',
    '2023-10-15 16:22:01.178882-07',
    'https://educrm.us.to/filestorage/solution/sol1.png'
  );
