SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `MerchantEmail`;
SET foreign_key_checks = 1;
CREATE TABLE `MerchantEmail` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAccount` bigint(20) UNSIGNED NOT NULL,
  `idMerchant` bigint(20) UNSIGNED NOT NULL,
  `idEmail` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idAccount`) REFERENCES `Account`(id),
  FOREIGN KEY (`idMerchant`) REFERENCES `Merchant`(id),
  FOREIGN KEY (`idEmail`) REFERENCES `Email`(id)
)