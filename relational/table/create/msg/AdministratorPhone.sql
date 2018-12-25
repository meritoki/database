SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `AdministratorPhone`;
SET foreign_key_checks = 1;
CREATE TABLE `AdministratorPhone` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `idAdministrator` bigint(20) UNSIGNED NOT NULL,
    `idPhone` bigint(20) UNSIGNED NOT NULL,
    `createDate` datetime NOT NULL,
    `activityDate` datetime NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idAdministrator`) REFERENCES user.`Administrator` (`id`),
    FOREIGN KEY (`idPhone`) REFERENCES `Phone` (`id`)
);
