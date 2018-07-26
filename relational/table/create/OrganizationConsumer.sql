SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `OrganizationConsumer`;
SET foreign_key_checks = 1;
CREATE TABLE `OrganizationConsumer` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `idAccount` bigint(20) UNSIGNED NOT NULL,
    `idOrganization` bigint(20) UNSIGNED NOT NULL,
    `idConsumer` bigint(20) UNSIGNED NOT NULL,
    `createdDate` datetime NOT NULL,
    `activitedDate` datetime NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idAccount`) REFERENCES `Account` (`id`),
	FOREIGN KEY (`idOrganization`) REFERENCES `Organization` (`id`),
    FOREIGN KEY (`idConsumer`) REFERENCES `Consumer` (`id`)
);