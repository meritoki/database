SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Provider`;
SET foreign_key_checks = 1;
CREATE TABLE `Provider` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAccount` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `name` varchar(128) NOT NULL,
  `url` varchar(256) NOT NULL,
  `port` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idAccount`) REFERENCES `Account`(id)
)