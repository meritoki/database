SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `PublisherViewer`;
SET foreign_key_checks = 1;
CREATE TABLE `PublisherViewer` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `idAccount` bigint(20) UNSIGNED NOT NULL,
    `idPublisher` bigint(20) UNSIGNED NOT NULL,
    `idViewer` bigint(20) UNSIGNED NOT NULL,
    `name` varchar(128) NULL, 
    `createDate` datetime NOT NULL,
    `activityDate` datetime NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idAccount`) REFERENCES `Account` (`id`),
	FOREIGN KEY (`idPublisher`) REFERENCES `Publisher` (`id`),
    FOREIGN KEY (`idViewer`) REFERENCES `Viewer` (`id`)
);