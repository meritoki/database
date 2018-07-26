SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Advertisement`;
SET foreign_key_checks = 1;
CREATE TABLE `Advertisement` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAccount` bigint(20) UNSIGNED NOT NULL,
  `idUser` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(128) NOT NULL,
  `uuid` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idAccount`) REFERENCES `Account`(id),
  FOREIGN KEY (`idUser`) REFERENCES `User`(id)
)