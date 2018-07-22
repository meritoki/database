SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `AccountOrganization`;
SET foreign_key_checks = 1;
CREATE TABLE `AccountOrganization` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAccount` bigint(20) UNSIGNED,
  `idOrganization` bigint(20) UNSIGNED,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idAccount`) REFERENCES `Account`(id)
)