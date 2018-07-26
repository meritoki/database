SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Merchant`;
SET foreign_key_checks = 1;
CREATE TABLE `Merchant` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAccount` bigint(20) UNSIGNED NOT NULL,
  `idOrganization` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(128) NOT NULL,
  `name` varchar(256) NOT NULL,
  `url` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idAccount`) REFERENCES `Account`(id),
  FOREIGN KEY (`idOrganization`) REFERENCES `Organization`(id)
)