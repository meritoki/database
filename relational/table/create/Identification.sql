SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Identification`;
SET foreign_key_checks = 1;
CREATE TABLE `Identification` (
    `id` int NOT NULL AUTO_INCREMENT,
    `firstName` varchar(64) DEFAULT NULL,
    `middleInitial` varchar(1) DEFAULT NULL,
    `middleName` varchar(64) DEFAULT NULL,
    `lastName` varchar(64) DEFAULT NULL,
    `name` varchar(256) DEFAULT NULL,
    `guid` varchar (128) DEFAULT NULL,
    `nickName` varchar(128) DEFAULT NULL,
    `gender` varchar(1) DEFAULT '0',
    `birthDate` datetime DEFAULT NULL,
    `idUser` bigint(20) UNSIGNED NOT NULL,
    `idAccount` bigint(20) UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idUser`) REFERENCES `User`(`id`),
    FOREIGN KEY (`idAccount`) REFERENCES `Account` (`id`)
);
