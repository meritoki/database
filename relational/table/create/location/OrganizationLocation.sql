SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `OrganizationLocation`;
SET foreign_key_checks = 1;
CREATE TABLE `OrganizationLocation` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `idOrganization` bigint(20) UNSIGNED NOT NULL,
    `idLocation` bigint(20) UNSIGNED NOT NULL,
    `createDate` datetime NOT NULL,
    `activityDate` datetime NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idOrganization`) REFERENCES user.`Organization` (`id`),
    FOREIGN KEY (`idLocation`) REFERENCES `Location` (`id`)
);
