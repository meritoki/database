SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `Merchant`;
SET foreign_key_checks = 1;
CREATE TABLE `Merchant` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idUser` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idUser`) REFERENCES `auth`.`User` (`id`)
)
