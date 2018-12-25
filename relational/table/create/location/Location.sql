SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Location`;
SET foreign_key_checks = 1;
CREATE TABLE `Location` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `addressOne` varchar(45) DEFAULT NULL,
    `addressTwo` varchar(45) DEFAULT NULL,
    `addressThree` varchar(45) DEFAULT NULL,
    `apartment` varchar(45) DEFAULT NULL,
    `suite` varchar(45) DEFAULT NULL,
    `unit` varchar(45) DEFAULT NULL,
    `city` varchar(45) DEFAULT NULL,
    `state` varchar(45) DEFAULT NULL,
    `zipCode` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`id`)
);
