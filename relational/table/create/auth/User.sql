SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `User`;
SET foreign_key_checks = 1;
CREATE TABLE `User` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `uuid` varchar(1024) NOT NULL,
    `idAccount` bigint(20) UNSIGNED NOT NULL,
    `name` varchar(64) NOT NULL,
    `password` varchar(64) NOT NULL,
    `registerDate` datetime NOT NULL,
    `activityDate` datetime NOT NULL,
    active boolean DEFAULT false,
    `login` int DEFAULT 1,
    `role` varchar(64) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idAccount`) REFERENCES `Account`(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
SET foreign_key_checks = 0;
