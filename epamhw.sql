
CREATE DATABASE IF NOT EXISTS `epamhw` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `epamhw`;


CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_add` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL,
  `model` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


INSERT IGNORE INTO `product` (`product_id`, `date_add`, `date_update`, `status`, `model`) VALUES
(1, '2021-02-11 13:32:33', '2021-02-11 13:32:33', 1, '213451'),
(2, '2021-02-11 13:32:47', '2021-02-11 13:32:47', 1, '54321'),
(3, '2021-02-11 13:32:58', '2021-02-11 13:32:58', 1, '87654'),
(4, '2021-02-11 13:33:37', '2021-02-11 13:33:37', 1, '58278'),
(5, '2021-02-11 13:33:37', '2021-02-11 13:33:37', 1, '45691');


CREATE TABLE IF NOT EXISTS `product_description` (
  `product_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  UNIQUE KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT IGNORE INTO `product_description` (`product_id`, `title`, `meta_title`, `meta_description`, `description`, `image`) VALUES
(1, 'test1', 'test1', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', 'no-image.png'),
(2, 'test2', 'test2', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', 'no-image.png'),
(3, 'test3', 'test3', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', 'no-image.png'),
(4, 'test4', 'test4', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', 'no-image.png'),
(5, 'test5', 'test5', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', 'no-image.png');


CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` enum('admin','menager','smm','operator') NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


INSERT IGNORE INTO `user` (`user_id`, `role`, `password`, `salt`, `status`) VALUES
(1, 'admin', '*9106525D164D5491E228529812EF651CC4334CF2', '15', 1),
(2, 'menager', '*BD667D10964D14CC0568104E134363B13B5D06CD', '234', 1),
(3, 'operator', '*5D9AEE2EA7F4D8553289E85EF6F46A781A44B1F9', '589', 1),
(4, 'smm', '*C73725411B7005C65D445641947B78B94523647D', '879', 1);


CREATE TABLE IF NOT EXISTS `user_description` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT current_timestamp(),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT IGNORE INTO `user_description` (`user_id`, `firstname`, `lastname`, `email`, `date_add`) VALUES
(1, 'Alex', 'Kopyl', 'test1@gmail.com', '2021-02-10 22:00:00'),
(2, 'Vasua', 'Gidok', 'test2@gmail.com', '2021-02-10 22:00:00'),
(3, 'Vika', 'Mirata', 'test3gmail.com', '2021-02-11 13:30:18'),
(4, 'Kolya', 'Gankov', 'test5@gmail.com', '2021-02-11 13:30:47');

ALTER TABLE `product_description`
  ADD CONSTRAINT `product_description_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);


ALTER TABLE `user_description`
  ADD CONSTRAINT `user_description_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);



SELECT * FROM user as u JOIN user_description as ud WHERE u.user_id = ud.user_id;
SELECT u.user_id, ud.firstname, ud.lastname, u.role, ud.date_add FROM user as u JOIN user_description as ud WHERE u.user_id = ud.user_id GROUP BY u.user_id;

UPDATE `user` SET `status`=0 WHERE `user_id` = 3;
SELECT * FROM `user` WHERE `status` = 1;
SELECT * FROM `user` WHERE `role` = "admin";
SELECT * FROM `user` LIMIT 0, 2;
SELECT COUNT(*) FROM `user`;
SELECT COUNT(*) FROM `user` WHERE `status` = 1;
SELECT * FROM `user` ORDER BY user_id DESC;