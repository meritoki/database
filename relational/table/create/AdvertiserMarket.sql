SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `AdvertiserMarket`;
SET foreign_key_checks = 1;
CREATE TABLE `AdvertiserMarket` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAccount` bigint(20) UNSIGNED,
  `idMarket` bigint(20) UNSIGNED,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idAccount`) REFERENCES `Account`(id),
  FOREIGN KEY (`idMarket`) REFERENCES `Market`(id)
)