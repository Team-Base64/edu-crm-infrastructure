INSERT INTO
  teachers (login, name, password)
VALUES
  ('test1', 'Фролов Сергей', '12345678');

INSERT INTO
  calendars (teacherID, idInGoogle)
VALUES
  (
    1,
    '611a7b115cb31d14e41c9909e07db425548dd3b5fa76a145f3c93ae7410bc142@group.calendar.google.com'
  ),
  (
    2,
    'ac72cdd00f0ec2432b1d2c8f5a864057a90095ad8fa1f20f172cb2ebe0321b52@group.calendar.google.com'
  ),
  (
    3,
    '1b1ba62a4a3cf7fddb951f7da03f51ca5f5d6058985850b3b13488abc3527924@group.calendar.google.com'
  ),
  (
    4,
    'f27bd93242c35c72330e3d785c0484b4d53827a7d21bd849f0d348b0f6b844d1@group.calendar.google.com'
  ),
  (
    5,
    'ed922e7d7bbb4d2c11410467cf90efaf36bb1ab6d1b30323cfb5885e54e6ecb5@group.calendar.google.com'
  ),
  (
    6,
    '8eb96921f9ca70465205ef5bedd6a3e42fabec4864aa795b80181d53f8353e6d@group.calendar.google.com'
  ),
  (
    7,
    '548aba5d3b6afee687818eef5b1768128b9ceea50d8ce24d514e3dac608269d1@group.calendar.google.com'
  ),
  (
    8,
    '15242ab1ddcc3a30709be873eaa5d4881401b3244edd09d2570e1e2d177dfa43@group.calendar.google.com'
  ),
  (
    9,
    '627d8f4de91ac284dec74c554450803943a847c0941f94a09dbd475aab56126b@group.calendar.google.com'
  ),
  (
    10,
    '80fba9d4aa17c399c72648521cba8cceff029abd3fe3a0b1854d833cc483a1d6@group.calendar.google.com'
  ),
  (
    11,
    '674356dd88a25e45b7fa6d3d8163e84dd4d6bf19855b6183be9371a47ff88838@group.calendar.google.com'
  ),
  (
    12,
    'c8801d6ae61051809d2d5fda24938745aa2fc24b2962dab13a53308bbcdf92c7@group.calendar.google.com'
  ),
  (
    13,
    'dd0cae6a39bd63d41dace0926e80a90f38dde9bf2c39d9368e7afea2ef643b8b@group.calendar.google.com'
  ),
  (
    14,
    'a20dc00aae038c73184bba7a9ed68fdc5bf5ac5476266efbf0468c4b80fb118f@group.calendar.google.com'
  ),
  (
    15,
    '71529f3bf1497d78242b940c46bc03a9b4a25ff550c1655a1ffbf7f9a362cb49@group.calendar.google.com'
  );

INSERT INTO
  students (name, socialType, avatar)
VALUES
  ('Полина', 'tg', 'https://i.pinimg.com/originals/9a/1d/30/9a1d30acd3e252d3ec8a76139cfabdfa.jpg'),
  ('Максим', 'vk', 'https://i.pinimg.com/736x/4e/17/54/4e1754e0bee5fa6717259833b9b91932--haircuts-for-boys-mens-haircuts.jpg');

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
  (1, 1, 1),
  (1, 1, 2),
  (1, 2, 2);

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
  tasks (teacherID, description, attaches)
VALUES
  (
    1,
    'Задача на систему уравнений тип 20',
    '{"https://educrm.us.to/filestorage/homework/system.png"}'
  ),
  (
    1,
    'Текстовая задача тип 12',
    '{"https://educrm.us.to/filestorage/homework/text12.png"}'
  ),
  (
    1,
    'Задача с таблицей уравнений тип 5',
    '{"https://educrm.us.to/filestorage/homework/table5.png"}'
  ),
  (
    1,
    'Задача на статистику тип 10',
    '{"https://educrm.us.to/filestorage/homework/stat10.png", "https://educrm.us.to/filestorage/homework/table5.png"}'
  ),
  (1, 'Подумай над смыслом жизни!', '{}');

INSERT INTO
  homeworks_tasks (homeworkID, taskID, rank)
VALUES
  (2, 1, 1),
  (3, 2, 1),
  (3, 3, 2),
  (3, 4, 3);

INSERT INTO
  solutions (homeworkID, studentID, text, createTime, files)
VALUES
  (
    1,
    1,
    'Не понимаю всё(',
    '2023-11-20 17:22:01.178882-07',
    '{}'
  ),
  (
    2,
    1,
    'Вроде всё решил правильно',
    '2023-10-14 17:22:01.178882-07',
    '{"https://educrm.us.to/filestorage/solution/solpdf.pdf", "https://educrm.us.to/filestorage/solution/sol1.jpg"}'
  ),
  (
    2,
    2,
    'Получилось, но не всё',
    '2023-10-15 16:22:01.178882-07',
    '{"https://educrm.us.to/filestorage/solution/sol1.png"}'
  );
