SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Email`;
SET foreign_key_checks = 1;
CREATE TABLE `Email` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `address` varchar(32) DEFAULT NULL,
    PRIMARY KEY (`id`)
);
