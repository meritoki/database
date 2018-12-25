SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `MerchantEmail`;
SET foreign_key_checks = 1;
CREATE TABLE `MerchantEmail` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idMerchant` bigint(20) UNSIGNED NOT NULL,
  `idEmail` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idMerchant`) REFERENCES user.`Merchant`(id),
  FOREIGN KEY (`idEmail`) REFERENCES `Email`(id)
)
