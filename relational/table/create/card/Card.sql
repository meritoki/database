SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Card`;
SET foreign_key_checks = 1;
CREATE TABLE `Card` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
)
