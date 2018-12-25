SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `OrganizationAdministrator`;
SET foreign_key_checks = 1;
CREATE TABLE `OrganizationAdministrator` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `idAccount` bigint(20) UNSIGNED NOT NULL,
    `idOrganization` bigint(20) UNSIGNED NOT NULL,
    `idAdministrator` bigint(20) UNSIGNED NOT NULL,
    `name` varchar(128) NULL, 
    `createDate` datetime NOT NULL,
    `activityDate` datetime NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idAccount`) REFERENCES `Account` (`id`),
	FOREIGN KEY (`idOrganization`) REFERENCES `Organization` (`id`),
    FOREIGN KEY (`idAdministrator`) REFERENCES `Administrator` (`id`)
);
