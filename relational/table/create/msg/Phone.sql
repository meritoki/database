SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Phone`;
SET foreign_key_checks = 1;
CREATE TABLE `Phone` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `number` varchar(32) DEFAULT NULL,
    PRIMARY KEY (`id`)
);
