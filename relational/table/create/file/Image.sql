SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Image`;
SET foreign_key_checks = 1;
CREATE TABLE `Image` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(128) NOT NULL,
  `uuid` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
)
