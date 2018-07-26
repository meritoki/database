SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Token`;
SET foreign_key_checks = 1;
CREATE TABLE `Token` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `idAccount` bigint(20) UNSIGNED NOT NULL,
    `idUser` bigint(20) UNSIGNED NOT NULL,
    `idClient` bigint(20) UNSIGNED NOT NULL,
    `value` varchar(1024) DEFAULT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idAccount`) REFERENCES `Account`(`id`),
    FOREIGN KEY (`idUser`) REFERENCES `User`(`id`),
    FOREIGN KEY (`idClient`) REFERENCES `Client`(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
SET foreign_key_checks = 0;
