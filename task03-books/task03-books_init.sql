CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ISBN` int NOT NULL,
  `authors` varchar(100) NOT NULL,
  `title` varchar(45) NOT NULL,
  `pages` int NOT NULL,
  `genre` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idbook` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idbook_idx` (`idbook`),
  CONSTRAINT `idbook` FOREIGN KEY (`idbook`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO books (id, ISBN, authors, title, pages, genre, date) VALUES 
(1, 0000000000001, 'Соколов', 'PHP круто!', 800, 'Фантастика, Коммедия', '28.07.1999'),
(2, 0000000000002, 'Абисова', 'Рарус', 550, 'Детектив', '12.10.2019'),
(3, 0000000000003, 'Колосов, Волосов', 'Чудеса', 112, 'Приключения', '14.01.2018'),
(4, 0000000000004, 'Ершов', 'Вокруг света', 123, 'Приключения', '11.11.2011'),
(5, 0000000000005, 'Тополев', 'Садоводство', 1231, 'Досуг', '12.01.2014'),
(6, 0000000000006, 'Айтров, Петров, Кремлев', 'Даже не знаю', 111, 'Фантастика, Прилючения', '28.07.1999'),
(7, 0000000000007, 'Соколов, Абисова', 'История любви', 999, 'Роман', '01.09.2020'),
(8, 0000000000008, 'Соколов', 'Как устроиться на работу', 9999, 'Фантастика', '29.10.2020'),
(9, 0000000000009, 'Криптов', 'Криптовалюты', 120, 'Фантастика', '20.08.2007'),
(10, 0000000000010, 'Соколов', 'Как выучить SQL?', 1, 'Фантастика', '13.12.2011');

INSERT INTO authors (id, idbook, name, surname) VALUES 
(1, 1, 'Соколов', 'Данил'),
(2, 7, 'Соколов', 'Данил'),
(3, 8, 'Соколов', 'Данил'),
(4, 10, 'Соколов', 'Данил'),
(5, 2, 'Абисова', 'Анастасия'),
(6, 7, 'Абисова', 'Анастасия'),
(7, 3, 'Колосов', 'Линад'),
(8, 3, 'Волосов', 'Антон'),
(9, 4, 'Ершов', 'Никита'),
(10, 5, 'Тополев', 'Денис'),
(11, 6, 'Айтров', 'Дмитрий'),
(12, 6, 'Петров', 'Дмитрий'),
(13, 6, 'Кремлев', 'Дмитрий'),
(14, 9, 'Криптов', 'Алексей');