SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `CustomerCard`;
SET foreign_key_checks = 1;
CREATE TABLE `CustomerCard` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idCard` bigint(20) UNSIGNED NOT NULL,
  `idCustomer` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idCard`) REFERENCES `Card`(id),
  FOREIGN KEY (`idCustomer`) REFERENCES `Customer`(id)
)