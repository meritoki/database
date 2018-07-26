SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `PublisherPublication`;
SET foreign_key_checks = 1;
CREATE TABLE `PublisherPublication` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `idAccount` bigint(20) UNSIGNED NOT NULL,
    `idPublisher` bigint(20) UNSIGNED NOT NULL,
    `idPublication` bigint(20) UNSIGNED NOT NULL,
    `name` varchar(128) NULL, 
    `createDate` datetime NOT NULL,
    `activityDate` datetime NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idAccount`) REFERENCES `Account` (`id`),
	FOREIGN KEY (`idPublisher`) REFERENCES `Publisher` (`id`),
    FOREIGN KEY (`idPublication`) REFERENCES `Publication` (`id`)
);