SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Phone`;
SET foreign_key_checks = 1;
CREATE TABLE `Phone` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `number` varchar(32) DEFAULT NULL,
    `idUser` bigint(20) UNSIGNED NOT NULL,
	`idAccount` bigint(20) UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idUser`) REFERENCES `User`(`id`),
	FOREIGN KEY (`idAccount`) REFERENCES `Account` (`id`)
);
