SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `MerchantPhone`;
SET foreign_key_checks = 1;
CREATE TABLE `MerchantPhone` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idMerchant` bigint(20) UNSIGNED NOT NULL,
  `idPhone` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idMerchant`) REFERENCES user.`Merchant`(id),
  FOREIGN KEY (`idPhone`) REFERENCES `Phone`(id)
)
