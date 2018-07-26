SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Language`;
SET foreign_key_checks = 1;
CREATE TABLE `Language` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
)