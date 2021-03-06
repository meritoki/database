SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Code`;
SET foreign_key_checks = 1;
CREATE TABLE `Code` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `redirectURI` VARCHAR(1024) DEFAULT NULL,
    `value` VARCHAR(1024) DEFAULT NULL,
    `idUser` bigint(20) UNSIGNED NOT NULL,
    `idClient` bigint(20) UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idUser`) REFERENCES `User`(`id`),
    FOREIGN KEY (`idClient`) REFERENCES `Client`(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
SET foreign_key_checks = 0;
