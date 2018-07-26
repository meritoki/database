SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Market`;
SET foreign_key_checks = 1;
CREATE TABLE `Market` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAccount` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idAccount`) REFERENCES `Account`(id)
)