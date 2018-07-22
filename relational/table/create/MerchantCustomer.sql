SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `MerchantCustomer`;
SET foreign_key_checks = 1;
CREATE TABLE `MerchantCustomer` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAccount` bigint(20) UNSIGNED NOT NULL,
  `idMerchant` bigint(20) UNSIGNED NOT NULL,
  `idCustomer` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idAccount`) REFERENCES `Account`(id),
  FOREIGN KEY (`idMerchant`) REFERENCES `Merchant`(id),
  FOREIGN KEY (`idCustomer`) REFERENCES `Customer`(id)
)