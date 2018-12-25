SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `OrganizationMerchant`;
SET foreign_key_checks = 1;
CREATE TABLE `OrganizationMerchant` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `idAccount` bigint(20) UNSIGNED NOT NULL,
    `idOrganization` bigint(20) UNSIGNED NOT NULL,
    `idMerchant` bigint(20) UNSIGNED NOT NULL,
    `createDate` datetime NOT NULL,
    `activityDate` datetime NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idAccount`) REFERENCES `Account` (`id`),
    FOREIGN KEY (`idOrganization`) REFERENCES `Organization` (`id`),
    FOREIGN KEY (`idMerchant`) REFERENCES `Merchant` (`id`)
);